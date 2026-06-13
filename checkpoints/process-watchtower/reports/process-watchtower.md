# Day 16 - Process Watchtower

## Goal
Learn how to inspect running processes, create a test process, find it, and safely stop it. 

## Commands Practiced
- ps
- ps aux | head
- ps aux | grep bash
- sleep 300 &
- ps aux | grep sleep 
- pgrep  sleep 
- kill 904

## Process Findings
- ps shows PID's 325 and 328.
- ps aux shows running processes with PID's 1, 2, 6, 52, 85, 99, 115, 116, 117.

## Test Process
- ps aux | grep bash helped me find the processes which included bash in it. 
- sleep 300 & created a safe test process.
- found the PID using ps aux | grep sleep by using grep to find the processes containing sleep.
- Kill stopped the process by using the PID after kill in the terminal 

## Troubleshooting Notes
- No errors made during this mini lab. 

## Cloud Engineering Connection
- This helps in Cloud engineering by identifying any unwanted processes or by stopping any processes we don't need. Especially when managing big servers with lots of processes running at once. 
