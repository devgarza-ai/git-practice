#!/bin/bash

echo "Log Backup Drill Started"

LOG_DIR="$HOME/git-practice/mini-labs/bash-log-backup/app_logs"
BACKUP_DIR="$HOME/git-practice/mini-labs/bash-log-backup/backups"

if [ -d "$LOG_DIR" ]; then
echo "Log directory found: $LOG_DIR"
echo "Backup Directory: $BACKUP_DIR"
for LOG_FILE in "$LOG_DIR"/*.log 
do
cp "$LOG_FILE" "$BACKUP_DIR"
echo "Copied $LOG_FILE"
done
else 
echo "Error: log directory not found."
exit 1
fi

