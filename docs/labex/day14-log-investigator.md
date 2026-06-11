# Day 14 - Log Investigator Lab

# Lab Completed
The Log Investigator on LabEx.

## Main Task 
The mission is to dive deep into the Project Phoenix server, analyze logs and configuration files, and uncover the root cause of system failures.

## Commands Practiced 
- grep 
- grep -E "fail|error" file.txt 
- dmesg
- diff
- cat
- ls
- `>`
- `>>`

## New Commands Learned
- grep -E "fail|error" file.txt combines the command using a pipe and searches for error and fail within the file search path. The | inside the quotes means OR for the grep pattern.  
- dmesg shows kernel messages from the linux system 
- brushed up on using diff to search for differences between files and directories

## Files Created

- boot_issues.txt
- error_report.txt
- config_diff.txt
- missing_files.txt

## Troubleshooting Notes
- a few typos i fixed along the way. No major failures. 

## Cloud Engineering Connection
Cloud Engineers often troubleshoot Linux servers by searching logs, checking system messages, comparing config files, and saving findings into reports. These skills are useful for Investigating issues on servers such as as AWS EC2 instances.
