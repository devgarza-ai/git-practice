## Tar Restore Drill

### Goal
Practice creating a compressed backup, verifying its contents, deleting a file, and restoring that file from the backup.

### Commands Practiced
- tar -czvf
- tar -tzvf
- tar -xvf
- rm
- tree
- cat
- ls -lh

### What I Practiced
I created a small app folder with a config file, user file, and log file. I backed up the app folder into a compressed `.tar.gz` archive, listed the archive contents, saved the archive listing to a text file, deleted the config file, and restored it from the archive.

### Troubleshooting Notes
I first tried listing the archive with the wrong archive name. I also tried extracting from `backup-contents.txt`, but that file is only a text report, not the actual archive.

The real archive was:

backups/app-backup.tar.gz

The correct restore command was:

tar -xvf backups/app-backup.tar.gz app/app.conf

### Key Takeaway
The archive file and the archive contents report are different. To restore a file, I must use the real archive file and the exact file path stored inside the archive.

### Cloud Engineering Connection
Cloud engineers need to know how to prove a backup works. A backup is not complete until it has been verified and tested with a restore.
