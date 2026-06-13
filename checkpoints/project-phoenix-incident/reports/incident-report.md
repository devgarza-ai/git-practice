# Project Phoenix Incident Reports

## Summary 
A small app had login issues, service warnings, and possible config drift. Your job is to create a simulated investigation folder, inspect logs, compare config files, write an incident report, archive your work, and publish it to GitHub using your safe branch workflow.

## Log Findings
- 3 ERROR lines found 
- Service timeout and Database Connection Error
- disk usage waring and high memory usage warning
- a Failed login attempt for an unknown user

# Config Differences
- 2 differnet port # 8080 and 8081
- debug difference true and false
- two different max connections

## Permission Actions
- health-check-sh made executable using sudo chmod +x
- incident-report.md made private to owner with chmod 600

## Commands Used
- sudo 
- cat
- mkdir 
- touch
- nano
- cat 
- diff
- chmod 600
- chmod +x

## Cloud Engineering Connection
This connects to cloud engineering by seeing where error, warnings and failed attempts are in your current or server system. This helps troubleshoot and maintain documentation along the way. Switching permissions for certain users is a huge connection with cloud engineering. You do not want the wrong person getting ahold of something important. 

