#!/bin/bash

REPORT="reports/ownership-audit-generated.txt"

ERROR_COUNT=$(grep -c "ERROR" logs/app.log)
FAILED_COUINT=$(grep -c "FAILED" logs/auth.log)

{
echo "Cloud Builder - Generaterd Ownership Audit" 
echo

echo "File Permission Audit:"
stat -c "%U %G %A %a %n" configs/{app.conf,app-prod.conf}
stat -c "%U %G %A %a %n" logs/{app.log,auth.log}
stat -c "%U %G %A %a %n" secrets/api.key
echo

echo "Log Findings:"
echo "ERROR count: $ERROR_COUNT"
echo "FAILED Login count: $FAILED_COUNT"
echo

echo "FAILED Login Lines:"
grep -n "FAILED" logs/auth.log

} > "$REPORT"

echo "Generated report: $REPORT"
