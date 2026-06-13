# Day 16 - The Process Overseer

## Lab Completed

LabEx Junior System Administrator - DAY 06: The Process Overseer

## Main Goal

Practice Linux process management by inspecting running processes, finding PIDs, monitoring system activity, stopping processes, and running background jobs.

## Commands Practiced

- ps aux
- top
- pgrep
- pgrep -f
- pkill
- nohup
- &
- `> processor.log`
- 2>&1
- cat
- mv
- ls

## What I Learned

- `ps aux` shows a snapshot of running processes.
- `top` shows live system activity.
- `pgrep` finds a PID by process name.
- `pgrep -f` searches the full command line for a process.
- `pkill` stops a process by name.
- `nohup` lets a process keep running even if the terminal closes.
- `&` runs a command in the background.
- `> file` redirects standard output into a file.
- `2>&1` sends error output to the same place as standard output.

## Troubleshooting Notes

- I had some trouble with `pgrep` because I had not learned it before.
- I learned that `pgrep` does not need `ps aux` piped into it.
- `pgrep -f critical_service.sh` worked because it searched the full command line.
- I used hints when needed and completed the lab successfully.

## Cloud Engineering Connection

Process management is important in cloud engineering because cloud servers run many services and background tasks. A cloud engineer needs to inspect running processes, find misbehaving services, stop bad processes, monitor resource usage, and redirect logs for troubleshooting.

## Key Takeaway

This lab helped me understand how Linux manages running programs and how administrators can monitor, find, and stop processes safely.
