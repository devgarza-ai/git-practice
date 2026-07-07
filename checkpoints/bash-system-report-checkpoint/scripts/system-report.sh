#!/bin/bash 

REPORT="reports/system-report.txt"
APP_DIR="app"
REPORT_DIR="reports"

if [[ ! -d "$APP_DIR" ]]; then
echo "Error: app directory not found."
exit 1 
fi

mkdir -p "$REPORT_DIR"

DATE=$(date)
USER=$(whoami)
CURRENT_DIR=$(pwd)
DISK_USAGE=$(df -h .)
APP_SIZE=$(du -sh "$APP_DIR")
APP_FILE_COUNT=$(find "$APP_DIR" -type f | wc -l)
SCRIPT_PERMISSION=$(stat -c "%A %a %n" "$0")

{
echo "System Report Checkpoint"
echo

echo "Date: $DATE"
echo "User: $USER"
echo "Current directory: $CURRENT_DIR"
echo "Disk usage: $DISK_USAGE"
echo "App folder size: $APP_SIZE"
echo "App file count: $APP_FILE_COUNT"
echo "Script permission: $SCRIPT_PERMISSION"

} > "$REPORT"

echo "Generated system report: $REPORT"
