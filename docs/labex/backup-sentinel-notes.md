# Day 09 - The Backup Sentinel

## Lab Completed
LabEx Junior SysAdmin - Day 09: The Backup Sentinel

## Main Skill
Backup, restore, and automation using `tar` and `cron`.

## What I Practiced
Today I practiced creating compressed backups, verifying backup contents, restoring a deleted file, and automating backups with cron.

## Commands Practiced
- tree
- touch
- nano
- cat
- cd
- ls
- mv
- rm
- tar -czvf
- tar -tzvf
- tar -xvf
- crontab -e

## What I Learned
A backup is only useful if it can be verified and restored. In this lab, I created a compressed archive using `tar`, checked what was inside the archive, deleted a file to simulate data loss, and restored the file from the backup.

I also practiced using `cron` to automate backups. Cron jobs run commands on a schedule, which is useful for regular server maintenance.

## Tar Notes
`tar -czvf` creates a compressed archive.

`tar -tzvf` lists the contents of a compressed archive.

`tar -xvf` extracts files from an archive.

The `-f` option is important because it tells `tar` which archive file to use.

## Troubleshooting Notes
I first ran the `tar` command from the wrong directory, so `tar` could not find the folders listed in `backup-list.txt`.

I also tried extracting without the correct `-f` syntax, which caused `tar` to complain about reading archive contents from the terminal.

The fix was to run the command from the correct directory and use the proper archive syntax:

tar -xvf backups/system-backup.tar.gz config/app.conf

## Cron Notes
Cron is used to schedule commands automatically.

The cron format is:

minute hour day-of-month month day-of-week command

Example:

* * * * * command

This means the command runs every minute.

Cron jobs should use absolute paths because cron may not run from the same directory as the user.

## Cloud Engineering Connection
Backups are critical in cloud engineering because servers, applications, and data must be protected from accidental deletion, corruption, and failure. Cloud engineers need to know how to create backups, verify them, restore data, and automate backup jobs.

## Key Takeaway
A real backup process includes creating the backup, verifying what is inside, testing a restore, and automating the process.
