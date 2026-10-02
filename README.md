# DevGarza — Cloud Engineering Foundations

This repository documents my hands-on foundation practice in Linux, Bash, Git/GitHub, networking, and beginner Python. It preserves scripts, troubleshooting reports, checkpoint labs, and technical notes that support my current AWS learning.

My goal is to prepare for cloud support, CloudOps, and junior cloud engineering work through practice, verification, and clear documentation.

## Current progress

Status as of October 2, 2026:

| Area | Verified progress or current status |
| --- | --- |
| AWS coursework | Completed all 13 modules of AWS Cloud Practitioner Essentials on September 22, 2026. |
| Certification preparation | Preparing for the AWS Certified Cloud Practitioner exam (CLF-C02). Course completion is separate from certification. |
| Networking | Completed a local networking checkpoint covering interfaces, routes, DNS checks, TCP listeners, HTTP testing, bind addresses, and service cleanup. |
| AWS hands-on work | Eight documented learning labs are available in [aws-cloud-labs](https://github.com/devgarza-ai/aws-cloud-labs). |

Linux, Bash, and Git remain active reinforcement areas while I study AWS and develop my portfolio.

## Foundation skills practiced

| Area | Practice covered |
| --- | --- |
| Linux administration | Filesystem navigation, file management, permissions, ownership, users and groups, and package management. |
| Troubleshooting | Log filtering, configuration comparison, process inspection, background jobs, process termination, and written findings. |
| Backups and recovery | Creating compressed archives, inspecting archive contents, and restoring a selected file to verify recovery. |
| Bash scripting | Variables, command substitution, conditionals, loops, directory checks, exit codes, and generated reports. |
| Git and GitHub | Reviewing diffs, staging, committing, restoring changes, branching, merging, pulling, pushing, and checking published results. |
| Networking | Interface and route inspection, DNS resolution, loopback versus all-interface binding, TCP listener inspection with `ss`, and HTTP checks with `curl`. |
| Beginner Python | Interactive input, type conversion, loops, exception handling, and numeric range validation. |

These are skills practiced through learning exercises and checkpoints. The linked artifacts provide the implementation details and recorded results.

## Practice and documentation index

The earlier Linux, Bash, and Git work remains part of this repository's learning history.

| Artifact | Focus |
| --- | --- |
| [Project Phoenix Incident](checkpoints/project-phoenix-incident/reports/incident-report.md) | Linux incident investigation and reporting. |
| [Process Watchtower](checkpoints/process-watchtower/reports/process-watchtower.md) | Process inspection and troubleshooting. |
| [Process Logger Incident](checkpoints/process-logger-incident/reports/logger-findings.md) | Background-process investigation. |
| [Server Pulse and Network Triage](checkpoints/server-pulse-triage/reports/server-pulse-triage.md) | System and network inspection. |
| [Cloud Builder Checkpoint 01](checkpoints/cloud-builder-checkpoint-01/reports/ownership-audit.md) | Ownership and file-permission review. |
| [Bash System Report Checkpoint](checkpoints/bash-system-report-checkpoint/README.md) | Directory checks and automated report generation. |
| [Bash Log Backup Drill](mini-labs/bash-log-backup/bash-log-backup-drill.md) | Copying matching log files and checking the result. |
| [Tar Restore Drill](mini-labs/tar-restore-drill/tar-restore-drill.md) | Archive inspection and selected-file restoration. |
| [Networking Mini Checkpoint 01](checkpoints/networking-mini-checkpoint-01/README.md) | Bind-address reachability tests, HTTP validation, and cleanup. |
| [Python Foundations 01](mini-labs/python-foundations-01/README.md) and [02](mini-labs/python-foundations-02/README.md) | Beginner scripting and safe input handling. |
| [Git workflow notes](docs/day11-git-summary.md) and [branching notes](docs/branch-notes.md) | Version-control practice and branch workflows. |
| [LabEx notes](docs/labex/) | Linux reinforcement and troubleshooting notes. |

## Repository layout

| Folder | Contents |
| --- | --- |
| [checkpoints/](checkpoints/) | Scenario-based foundation labs, scripts, and reports. |
| [mini-labs/](mini-labs/) | Focused Bash, backup, and Python exercises. |
| [docs/](docs/) | Linux, LabEx, and Git learning notes. |

## Related AWS work

AWS lab documentation is maintained in [aws-cloud-labs](https://github.com/devgarza-ai/aws-cloud-labs). The eight labs cover:

- Private S3 object access and presigned sharing.
- EC2 launch, SSH troubleshooting, encrypted EBS storage, and cleanup.
- VPC subnetting, public/private routing, and security-group and network-ACL configuration.
- RDS for MySQL provisioning and readiness checks.
- IAM group-based S3 permissions and bucket-list authorization.
- DynamoDB Streams, Lambda execution, CloudWatch logs and alarms, and SNS notifications.
- CloudTrail investigation of S3 bucket management events.

Each lab documents its validation scope and cleanup state, including distinctions between observed behavior, configuration checks, and design-only components.

## Practice environment

I use WSL2 Ubuntu and LabEx for local foundation practice, and AWS Skill Builder and AWS Educate for AWS learning.

My documentation workflow is:

Edit → Check status → Review diff → Stage → Commit → Push → Verify on GitHub

## Next steps

1. Continue CLF-C02 review and hands-on AWS reinforcement. Schedule the exam after scoring at least 80% on two timed full practice exams.
2. Use Cloud Quest and AWS Educate for further practice, and build my first polished AWS portfolio project after passing CLF-C02.
3. Begin targeted job applications after Project 1.
4. Start Terraform after Project 1, continue building and refining portfolio projects, and continue toward AWS Solutions Architect Associate preparation.

These are planned steps. Completed work is identified in the progress summary and linked lab records.

Learn → Practice → Document → Review → Repeat
