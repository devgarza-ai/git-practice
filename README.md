# DevGarza Cloud and AI Engineering Practice

Welcome to my Cloud and AI Engineering practice repository.

This repository documents my hands-on journey toward becoming a Cloud and AI/ML Engineer. I am currently focused on building a strong foundation in Linux, Git/GitHub, Bash scripting, troubleshooting, documentation, and eventually AWS, networking, DevOps, and AI/ML infrastructure.

My goal is to build real skills step by step through hands-on labs, checkpoint projects, command-line practice, and clean documentation.

---

## Current Study Stage

I am currently in:

```text
Late Phase 1: Linux Foundation Reinforcement
Early Phase 2: Beginner Git/GitHub Confidence
```

My current focus is:

- Linux command-line reinforcement
- Git and GitHub workflow confidence
- Bash scripting practice
- Troubleshooting-style labs
- Clean documentation
- Preparing to start networking basics soon

I am not rushing into advanced tools yet. Docker, Kubernetes, Terraform, advanced AWS, and AI/ML tools will come later after the foundation is stronger.

---

## Current Learning Resources

### Main Resource

```text
WSL Ubuntu hands-on practice
```

I use WSL Ubuntu for teaching sessions, command practice, mini labs, checkpoint labs, and Linux troubleshooting practice.

### Support Resource

```text
LabEx Linux for Noobs
```

I use LabEx for reinforcement, command refresh, and extra hands-on repetition.

### GitHub Usage

GitHub is used for clean artifacts only, including:

- Portfolio-worthy documentation
- Checkpoint labs
- Scripts
- Reports
- Git practice
- Study progress summaries

Not every WSL practice session needs a GitHub commit. This repository is for work that is worth saving and reviewing.

---

## Skills Practiced So Far

### Linux Navigation and File Management

I have practiced:

```text
pwd
cd
ls
ls -l
ls -a
ls -la
tree
mkdir
mkdir -p
touch
cp
mv
rm
rmdir
```

Skills learned:

- Navigating the Linux filesystem
- Creating files and folders
- Moving, copying, and deleting files
- Organizing project directories
- Reading directory structures with `tree`
- Understanding paths and file locations

---

### File Reading, Editing, and Redirection

I have practiced:

```text
nano
cat
cat -n
head
tail
less
echo
>
>>
tee
```

Skills learned:

- Viewing file contents
- Editing files in the terminal
- Writing output into files
- Appending output to existing files
- Creating simple reports from command output
- Understanding how redirection works

---

### Search, Filtering, and Comparison

I have practiced:

```text
grep
grep -n
grep -i
grep -r
grep -E
find
diff
diff -r
wc -l
sort
uniq
uniq -c
```

Skills learned:

- Searching logs and files
- Finding errors and warnings
- Searching recursively through folders
- Comparing config files
- Counting matches
- Sorting and summarizing command output
- Building troubleshooting workflows from multiple commands

Important workflow learned:

```text
Search → Filter → Count → Summarize → Save Report
```

---

### Permissions, Ownership, Users, and Groups

I have practiced:

```text
chmod
chmod +x
chmod 600
chmod 640
chmod 644
chmod 700
chmod 755
chmod 750
chmod 2770
chown
chown -R
chgrp
stat
whoami
id
groups
sudo
useradd
passwd
usermod
userdel
newgrp
```

Skills learned:

- Reading permissions with `ls -l`
- Reading numeric and symbolic permissions with `stat`
- Understanding owner, group, and others
- Understanding read, write, and execute permissions
- Protecting sensitive files with `600`
- Making scripts executable with `chmod +x` or `chmod 755`
- Understanding that ownership answers “who” and permissions answer “what they can do”

Important concept:

```text
Ownership answers: who?
Permissions answer: what can they do?
```

Example:

```text
-rw-r----- 1 devgarza devgarza app.log
```

Means:

```text
Owner: devgarza
Group: devgarza

Owner permissions: read/write
Group permissions: read only
Others permissions: no access
```

---

### Logs and Troubleshooting

I have practiced working with fake and practice log files using:

```text
grep
grep -n
grep -E
grep -c
tail
cat
wc -l
diff
stat
```

Skills learned:

- Finding `ERROR`, `WARNING`, and `FAILED` entries
- Counting log matches
- Creating incident reports
- Comparing configuration changes
- Summarizing findings in markdown reports
- Practicing cloud-style troubleshooting workflows

This matters because cloud engineers often inspect logs to understand failed services, login issues, configuration problems, and system behavior.

---

### Archives, Backups, and Restore Testing

I have practiced:

```text
tar
tar -czf
tar -czvf
tar -tzvf
tar -xzvf
```

Skills learned:

- Creating compressed archives
- Listing archive contents
- Extracting archives
- Testing backup and restore workflows
- Verifying backup contents before trusting them

This matters because cloud and systems work often involves backups, recovery plans, and verifying that saved data can actually be restored.

---

### Processes and System Inspection

I have practiced:

```text
ps
ps aux
pgrep
pgrep -f
kill
pkill -f
nohup
sleep 300 &
top
uptime
```

Skills learned:

- Viewing running processes
- Searching for process names
- Running background jobs
- Stopping processes safely
- Understanding basic system activity
- Practicing process troubleshooting

---

### Networking Basics Exposure

I have started light networking practice with:

```text
ip addr
ping -c
ss -tlnp
ufw
```

Skills learned:

- Viewing network interface information
- Testing connectivity
- Checking listening ports
- Seeing basic firewall behavior
- Preparing for deeper networking fundamentals

Networking basics will become a larger focus soon.

---

### Package Management

I have practiced:

```text
sudo apt update
sudo apt upgrade
sudo apt install
apt remove
apt autoremove
```

Skills learned:

- Updating package lists
- Installing Linux tools
- Removing packages
- Understanding that Linux servers need package maintenance

---

### Bash Scripting

I have started practicing Bash scripting with:

```text
#!/bin/bash
variables
command substitution
grep -c
grep -n
stat
chmod +x
./script.sh
output redirection
grouped command output
```

Skills learned:

- Creating executable scripts
- Running scripts from the terminal
- Using scripts to automate repeated checks
- Generating reports from command output
- Counting log events with `grep -c`
- Redirecting command groups into report files

Current scripting focus:

```text
Build small scripts that automate Linux checks and generate reports.
```

Bash scripting is an active growth area for me.

---

## Git and GitHub Skills Practiced

I have practiced:

```text
git status
git add
git commit
git log --oneline
git diff
git diff --staged
git restore
git branch
git switch
git switch -c
git merge
git pull
git push
```

Skills learned:

- Checking repository status
- Reviewing changes before staging
- Staging files
- Making clean commits
- Viewing commit history
- Creating branches
- Switching branches
- Merging work safely
- Pulling changes from GitHub
- Pushing clean work to GitHub

Current Git workflow goal:

```text
edit → check status → review diff → stage → commit → push when ready
```

GitHub is becoming my progress vault for cloud engineering practice.

---

## Completed Study Milestones

### Linux Foundation

Completed:

- WSL Ubuntu setup
- Linux Days 1-10
- Day 8 Linux Mini Project
- Day 9 Text Processing and Pipes
- Day 10 Linux Review Challenge
- Multiple custom Linux command gyms
- Permissions practice
- Ownership practice
- Log troubleshooting practice
- Backup and restore practice

---

### LabEx Progress

Completed:

- LabEx Quick Start with Linux
- LabEx Junior SysAdmin course
- LabEx Linux for Noobs reinforcement labs

LabEx has helped reinforce:

- Linux commands
- File management
- Permissions
- Users and groups
- Logs
- Processes
- Networking basics
- Packages
- Scripts

---

### Custom Checkpoint Labs

Completed checkpoint-style practice includes:

- Day 8 Linux Mini Project
- Day 10 Linux Review Challenge
- Project Phoenix Incident Checkpoint
- Process Watchtower
- Process Logger Incident
- Server Pulse and Network Triage
- Bash Log Backup Drill
- Bash Log Backup Drill v2
- Mixed Linux Command Gym 01
- WSL Permissions Command Gym 01
- WSL Ownership Command Gym 01
- Cloud Builder Checkpoint 01

These labs help me move from memorizing commands to using Linux in real troubleshooting workflows.

---

## Recent Checkpoint Lab

### Cloud Builder Checkpoint 01

Path:

```text
checkpoints/cloud-builder-checkpoint-01/
```

This checkpoint combined:

- Linux project structure
- Config files
- Log files
- Fake secret file handling
- Permissions
- Ownership inspection
- Bash scripting
- Report generation
- Git branch workflow

Skills practiced:

```text
mkdir
touch
echo
cat
nano
ls -l
chmod
stat
grep
grep -c
grep -n
./script.sh
git status
git branch
git switch -c
```

Files created:

```text
configs/app.conf
configs/app-prod.conf
logs/app.log
logs/auth.log
secrets/api.key
reports/ownership-audit.md
reports/ownership-audit-generated.txt
scripts/ownership-audit.sh
```

Permission decisions:

```text
configs/app.conf        644
configs/app-prod.conf   644
logs/app.log            640
logs/auth.log           640
secrets/api.key         600
scripts/ownership-audit.sh 755
```

Cloud engineering takeaway:

Linux ownership and permissions are important because servers often contain logs, configs, scripts, and secret files. Incorrect permissions can expose sensitive data or stop services from working correctly.

---

## Common Mistakes I Have Corrected

I have corrected mistakes such as:

```text
cd.. → cd ..
wc -1 → wc -l
la / las → ls
logs/*.logs → logs/*.log
/configs/app-v2.conf → configs/app-v2.conf
secrets/api,key → secrets/api.key
```

I have also learned that Linux is very literal. Small spacing, spelling, path, and flag mistakes matter.

Important lesson:

```text
Read the error.
Check the path.
Check the spelling.
Check the command format.
Try again carefully.
```

---

## Repository Structure

Current main folders include:

```text
checkpoints/
docs/
mini-labs/
```

### checkpoints/

Contains larger scenario-based labs and troubleshooting projects.

### docs/

Contains study notes, LabEx notes, Git notes, and Linux documentation.

### mini-labs/

Contains smaller focused practice labs for specific command groups or workflows.

---

## Current Roadmap

### Current Focus

```text
Linux reinforcement + Git/GitHub confidence + Bash scripting practice
```

### Next Focus

```text
Networking basics
```

Topics coming soon:

- IP addresses
- DNS
- Ports
- HTTP/HTTPS
- SSH
- Firewalls
- Subnets
- Routing basics
- curl
- ping
- ss
- ip addr
- ufw

### Later Focus

After Linux, Git, scripting, and networking are stronger, I will move into:

- AWS Cloud Practitioner foundation
- AWS Solutions Architect Associate foundation
- Python basics
- Cloud portfolio projects
- Resume, LinkedIn, and interview preparation
- Later DevOps tools
- Later AI/ML infrastructure

---

## Long-Term Goal

My long-term goal is to become a Cloud and AI/ML Engineer.

This repository is proof of my progress through:

```text
Practice → Troubleshoot → Document → Commit → Improve
```

I am building the foundation one command, one lab, one script, and one clean commit at a time.
