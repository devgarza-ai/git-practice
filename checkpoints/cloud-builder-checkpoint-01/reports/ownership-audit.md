# Cloud Builder Checkpoint 01: Ownership Audit

## Purpose
The sole Purpose of this lab is to get familiar with Linux terminal, change permissions, create script automation and challenge myself with the knowlede I have gained throughout this path. 

## Files Reviewed
- 'app.conf'
- 'app-prod.conf'
- 'app.log'
- 'auth.log'
- 'api.key'

## Permission Decisions
- '.conf' files have the numeric permissions 644
- '.log' files have the numeric permissions 640
- '.key' files have the numeric permissions 600

## Findings
All permissions were verified by using the 'ls -l' command and also verified with using 'stat -c "%U %G %A %a %n"' with the proper file path at the end. 

## Cloud Engineering Takeaway
This checkpoinit helps in every day cloud engineering by managing who has access to which files and if they contain senstive information with the proper permissions. 
