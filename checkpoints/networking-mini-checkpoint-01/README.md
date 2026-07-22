# Networking Mini Checkpoint 01

## Overview

This checkpoint demonstrated how a service's bind address affects its reachability through different local IPv4 addresses.

I created a temporary Python HTTP server on TCP port `8095`, inspected its listener with `ss`, and tested the application with `curl`. I compared three service states:

1. TCP port `8095` closed.
2. Server bound only to the loopback address `127.0.0.1`.
3. Server bound to all local IPv4 interfaces using `0.0.0.0`.

I collected evidence during each stage and returned the system to its original closed-port state after completing the tests.

## Skills Demonstrated

- Inspecting network interfaces and IPv4 addresses
- Identifying the local network and default gateway
- Inspecting DNS resolver configuration
- Performing hostname-resolution tests
- Inspecting TCP listeners and their owning processes
- Starting and stopping a temporary HTTP service
- Comparing loopback and host-interface reachability
- Testing HTTP responses with `curl`
- Managing background processes and process IDs
- Troubleshooting a background pipeline
- Verifying service cleanup after testing
- Documenting technical evidence

## Commands and Tools Used

- `ip -4 -br addr`
- `ip route`
- `cat /etc/resolv.conf`
- `getent ahostsv4`
- `ss -ltn`
- `ss -ltnp`
- `python3 -m http.server`
- `curl`
- `tee`
- `kill`
- `wait`
- Shell variables such as `$!`

## Reachability Test Matrix

| Service state | Loopback result | Host-interface result |
|---|---|---|
| Port closed | Connection failed | Connection failed |
| Bound to `127.0.0.1` | `HTTP/1.0 200 OK` | Connection failed |
| Bound to `0.0.0.0` | `HTTP/1.0 200 OK` | `HTTP/1.0 200 OK` |
| After cleanup | No listener | No listener |

## Loopback-Only Test

The first server was bound to:

`127.0.0.1:8095`

The loopback address represents the local computer itself. Because the server was listening only through `127.0.0.1`, a request sent to the loopback destination succeeded and returned:

`HTTP/1.0 200 OK`

A request sent to the host-interface address failed because the server was not listening through that interface.

This demonstrated that a running application is not automatically reachable through every address assigned to a system. Reachability depends partly on the address to which the service is bound.

## All-Interface Test

The second server was bound to:

`0.0.0.0:8095`

On a server, `0.0.0.0` is a wildcard bind address. It tells the application to listen through every local IPv4 interface available on that system.

After changing the bind address, requests sent to both the loopback address and the host-interface address returned:

`HTTP/1.0 200 OK`

The returned page body was:

`DevGarza blind networking checkpoint`

A client would normally use a specific destination address, such as a loopback or host-interface address. It would not normally use `0.0.0.0` as the destination because `0.0.0.0` represents a server-side wildcard binding rather than one specific remote endpoint.

## What `ss` and `curl` Proved

The `ss` command proved that:

- TCP port `8095` was listening.
- The service was bound to a particular local address.
- The listener belonged to the `python3` process.
- The process ID associated with the listener could be identified.

The `curl` command proved that:

- A TCP connection could be made to the selected destination.
- The HTTP application responded successfully.
- The server returned valid HTTP headers.
- The expected page content was available.

`ss` inspected the operating system's socket state, while `curl` tested the application from the client's point of view.

## Troubleshooting Highlight

While starting the all-interface server, I initially used a background pipeline similar to:

`python3 -m http.server ... | tee server.log &`

The server and `tee` ran as separate processes. Because `tee` was the final command in the background pipeline, `$!` captured the process ID of `tee` instead of the Python server.

Killing that recorded process stopped `tee`, but the Python server continued listening on TCP port `8095`.

I diagnosed the problem with `ss -ltnp`, which displayed the actual `python3` process that owned the listener. I terminated the correct Python process and verified that the port closed.

For the recovery attempt, I redirected the server output directly into a log file instead of using a pipeline:

`python3 -m http.server 8095 --bind 0.0.0.0 > server.log 2>&1 &`

This caused `$!` to capture the Python server's process ID directly. I confirmed that the saved process ID matched the process shown by `ss`.

This incident reinforced an important shell concept: when a background job contains a pipeline, `$!` normally identifies the final process in that pipeline, which may not be the process that owns the network listener.

## Security Takeaway

Binding a service to `127.0.0.1` limits it to connections originating from the local system.

Binding a service to `0.0.0.0` makes it listen through every local IPv4 interface. This increases potential exposure because the service may become reachable through additional networks.

However, a wildcard binding does not automatically prove that every remote computer can reach the service. Remote reachability may still be affected by:

- Firewall rules
- Routing
- Network address translation
- Cloud security groups
- Access-control policies
- The surrounding network configuration

Services should be bound only to the interfaces required for their intended purpose.

## Final Result

The networking mini checkpoint was completed successfully.

I independently demonstrated:

- Interface and route inspection
- DNS configuration and hostname-resolution checks
- Closed-port verification
- Loopback-only service binding
- All-interface service binding
- TCP listener inspection
- HTTP application testing
- Background-process troubleshooting
- Process cleanup
- Final closed-port verification

After terminating the temporary servers, I inspected TCP port `8095` again. No `LISTEN` entry appeared, proving that no process remained listening on the checkpoint port.

This project strengthened my understanding of the relationship between applications, processes, TCP ports, bind addresses, network interfaces, and client reachability.
