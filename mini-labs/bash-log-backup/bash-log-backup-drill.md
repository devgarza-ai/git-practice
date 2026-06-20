# Bash Log Backup Drill

## Goal

Practice building a Bash script that checks for a log directory, copies only `.log` files into a backup directory, and verifies the result.

## What I Built

I created a mini lab with an `app_logs` directory, a `backups` directory, sample log files, and a Bash script named `log_backup.sh`.

The script uses variables, an `if` statement, a `for` loop, wildcard matching, and the `cp` command to back up log files.

## Files Created

- app_logs/application.log
- app_logs/access.log
- app_logs/error.log
- app_logs/README.txt
- backups/application.log
- backups/access.log
- backups/error.log
- log_backup.sh

## Script Concepts Practiced

### Shebang

#!/bin/bash

The shebang tells Linux to run the script using Bash.

### Variables

`LOG_DIR="$HOME/git-practice/mini-labs/bash-log-backup/app_logs"`
`BACKUP_DIR="$HOME/git-practice/mini-labs/bash-log-backup/backups"`

Variables store reusable values. In this script, `LOG_DIR` stores the source directory where the log files are located, and `BACKUP_DIR` stores the destination directory where the copied log files should go.

Using variables makes the script easier to read and easier to change later.

### Directory Check

`if [ -d "$LOG_DIR" ]; then`

This checks whether the path stored in `LOG_DIR` exists and is a directory.

The `-d` test returns true when the target exists as a directory.

### If Statement

An `if` statement allows a script to make a decision.

In this script, the `if` statement checks whether the log directory exists before trying to copy files.

If the directory exists, the script continues.

If the directory does not exist, the script prints an error and stops.

### Exit Codes

exit 1

`exit 1` stops the script and reports an error.

`exit 0` means the script completed successfully.

Exit codes are important because Linux and automation tools use them to determine whether a command or script succeeded or failed.

### For Loop

`for LOG_FILE in "$LOG_DIR"/*.log`
`do`
  `cp "$LOG_FILE" "$BACKUP_DIR"`
  `echo "Copied $LOG_FILE"`
`done`

The loop finds every file ending in `.log` inside the log directory.

Each matching file is temporarily stored in the `LOG_FILE` variable.

The script then copies that file into the backup directory and prints a message showing which file was copied.

### Wildcard Pattern

`*.log`

The `*` wildcard means any filename.

The pattern `*.log` means any file ending in `.log`.

This is why the script copied:

- access.log
- application.log
- error.log

But skipped:

- README.txt

`README.txt` does not end in `.log`, so it did not match the pattern.

## Verification

After running the script, the `backups` directory contained:

- access.log
- application.log
- error.log

The file `README.txt` was not copied.

This proved that the script only copied files matching the `*.log` pattern.

## Troubleshooting Notes

I practiced fixing script issues involving:

- Missing `fi`
- Variable expansion with `$LOG_DIR`
- Using `$HOME` instead of `~` inside quoted paths
- Understanding `&&` versus `;`
- Testing exit codes with `$?`
- Making the script executable with `chmod +x`
- Verifying execute permission with `ls -l`
- Confirming that `README.txt` was not copied

## Important Command Notes

`chmod +x log_backup.sh`

This adds execute permission to the script.

`./log_backup.sh`

This runs the script from the current directory after execute permission has been added.

`bash log_backup.sh`

This runs the script using Bash even if execute permission has not been added yet.

`bash log_backup.sh; echo "Exit Code: $?"`

This runs the script and then prints the exit code.

The semicolon runs the second command regardless of whether the first command succeeds or fails.

## Cloud Engineering Connection

Cloud engineers use Bash scripts to automate repeated server tasks.

This lab connects to real cloud work because scripts are often used to copy logs, check directories, back up files, validate paths, and report success or failure through exit codes.

This kind of scripting is useful for Linux servers, AWS EC2 instances, DevOps workflows, troubleshooting, and basic automation.

## Key Takeaway

Variables remember values.

`if` statements make decisions.

`for` loops repeat actions.

Wildcards filter files.

Exit codes report success or failure.

This script successfully copied only `.log` files into a backup folder and skipped unrelated files like `README.txt`.
