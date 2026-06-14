# Day 16 - The Network Navigator

## Lab Completed

LabEx Junior System Administrator - DAY 07: The Network Navigator

## Main Goal

Practice basic Linux network troubleshooting by checking network interfaces, verifying IP addresses, testing connectivity, checking listening ports, and configuring firewall rules.

## Commands Practiced

* ip addr
* ifconfig
* ping -c 3 8.8.8.8
* ss -tlnp
* sudo ufw allow 8000
* sudo ufw allow ssh
* sudo ufw enable
* sudo ufw status

## What I Learned

* `ip addr` shows network interfaces and IP addresses.
* `ifconfig` also shows network interface information, but it is an older command from the `net-tools` package.
* `ping` tests network connectivity.
* `ping -c 3 8.8.8.8` sends 3 test packets to Google DNS.
* `ss -tlnp` shows listening TCP ports and the processes using them.
* `ufw` is a Linux firewall tool.
* `sudo ufw allow 8000` allows traffic on port 8000.
* `sudo ufw allow ssh` allows SSH traffic, usually on port 22.
* `sudo ufw enable` turns on the firewall.
* `sudo ufw status` verifies the firewall rules.

## Troubleshooting Notes

* I learned that `ifconfig` may not be installed by default on newer Ubuntu systems because it comes from the older `net-tools` package.
* The modern command to check network interfaces is `ip addr`.
* I made a mistake with `ping -c` because the `-c` option needs a number after it.
* The correct command was `ping -c 3 8.8.8.8`.
* I learned that `ss -tlnp` is useful for checking if a service is listening on a specific port.
* I learned that firewall rules need to allow the correct ports for services to be reachable.

## Important Concepts

* `lo` is the loopback interface for the local machine.
* `eth0` is usually the main network interface.
* An IP address identifies a machine or interface on a network.
* A port identifies a specific service or application running on a machine.
* Port `22` is commonly used for SSH.
* Port `8000` was used for the internal portal/web service in this lab.
* A firewall controls what traffic is allowed or blocked.

## Cloud Engineering Connection

This lab connects directly to cloud engineering because cloud servers need correct networking and firewall configuration. A cloud engineer needs to know how to check if a server has an IP address, test if it can reach the internet, verify if an application is listening on the correct port, and confirm that firewall rules allow the needed traffic.

This also connects to AWS networking concepts. In AWS, Security Groups act like cloud firewalls. The same idea applies: allow the right traffic on the right port and block what should not be open.

## Key Takeaway

This lab helped me understand the basic network troubleshooting flow: check the interface, verify the IP address, test connectivity, check the listening port, configure the firewall, and verify the result.
