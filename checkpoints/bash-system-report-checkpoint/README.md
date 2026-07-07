# Bash System Report Checkpoint

## What This Checkpoint Does

This checkpoint builds a small Bash script that generates a system report for a practice application folder.

The script checks basic system information, verifies that the required app directory exists, creates the reports directory if needed, and saves the final output into a report file.

Generated report:

reports/system-report.txt

Script created:

scripts/system-report.sh

## Commands Practiced

- mkdir
- touch
- tree
- cat
- nano
- chmod
- mv
- date
- whoami
- pwd
- df -h .
- du -sh
- find
- wc -l
- stat
- ./scripts/system-report.sh

## Bash Concepts Practiced

This checkpoint reinforced beginner Bash scripting concepts, including:

- Creating and running a Bash script
- Using variables such as REPORT, REPORT_DIR, and APP_DIR
- Using command substitution with $()
- Using quoted variables like "$APP_DIR"
- Redirecting grouped output into a report file with { } > "$REPORT"
- Checking if a directory exists with if [[ ! -d "$APP_DIR" ]]
- Exiting safely with exit 1
- Creating a missing report directory with mkdir -p
- Making a script executable with chmod 755

## Errors or Lessons Learned

One important lesson was the difference between literal text and a variable value.

"APP_DIR" means the literal text APP_DIR.

"$APP_DIR" means the value stored inside the APP_DIR variable.

I also tested the script by temporarily renaming the app directory to apps. The script correctly stopped and printed an error:

Error: app directory not found.

After restoring the folder name back to app, the script ran successfully again and generated the system report.

## Cloud Engineering Takeaway

Cloud engineers often need to write small scripts that collect system information, check folders, verify files, inspect disk usage, and generate reports.

This checkpoint helped me practice safer scripting by making the script check for required folders before running. This is important because real server scripts should not assume everything is perfect. They should check conditions, fail safely, and produce clear output.

## Final Result

The final script generated a report that included:

- Date
- User
- Current directory
- Disk usage
- App folder size
- App file count
- Script permission

This checkpoint helped reinforce Linux commands, Bash scripting, safety checks, and report generation in a GitHub-ready project structure.
