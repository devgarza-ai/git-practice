# Day 17 - Server Pulse & Network Triage

## Goal
You are a junior sysadmin checking a small Linux server. Your job is to inspect processes, generate logs, check networking, write a report, and push everything cleanly to GitHub.

## Commands Practiced
- ping -c 3
- pgrep -f 
- pkill -f 
- ps aux | grep 
- grep -E 
- chmod +x 
- ip addr
- ts -tlnp
- nano 
- mkdir -p 
- cat

## Process Findings
- Process found using ps aux | grep -f server-pulse.sh. Live with PID 597.

## Log Findings
- 2 Warnings and 1 Error found

## Network Findings
- IP address for our eth0 is 172.17.32.206
- Lo is 127.0.0.1
- We have verification our machine has connection by pinging googles public DNS server using ping -c 3 8.8.8.8 command. 

## How I Stopped the Process
I stopped the process by using the pkill -f command to search the entire command line for the file by name. I then used pgrep -f server-pulse.sh to verify if the process ended. 

## Troubleshooting Notes
- No errors made during this lab. 

## Cloud Engineering Connection
This connects to Cloud engineering by finding out the ip addresses of the local machine, verifying connection to a public DNS servers, opening and closing processes, creating background process to help business or AWS needs. 
