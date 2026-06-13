# Process Logger Incident

## Goal
My Job is to start a fake background logger. I'm to start it, inspect it, count warning/error lines, stop it safely and document everything.

## Commands Practiced
- `cat`
- `pgrep fake-logger.sh`
- `grep`
- `grep -E "ERROR|WARNING" | wc -l`
- `ps aux | grep fake-logger`
- `pgrep -f fake-logger.sh`
- `nohup {filepath}/./fake-logger.sh > {filepath}/fake-logger.log 2>&1 &`
- `mkdir - p processor-logger-incident/{logs,reports,scripts}`

## Process Findings
- fake-logger.sh has a background PID of 3326 and 3276
- 1 ERROR
- 2 WARNING
- 2 INFO

## Log Findings
- INFO service running 
- WARNING memory usage rising
- ERROR process check failed
- INFO devgarza login detected
- WARNING high cpu usage

## How I Stopped the Process
I stopped the process by using pkill -f fake-logger.sh 

## Cloud Engineering Connection
This connects with Cloud Engineering by making background processes you want running consistently. This also helps count and Identify any warnings or errors within the server and safely stopping the process. 
