# DevGarza — Cloud Engineering Foundations

This repository documents my hands-on foundation practice in Linux, Bash, Git/GitHub, networking, and beginner Python. It preserves scripts, troubleshooting reports, checkpoint labs, and technical notes that support my AWS and Terraform work.

My goal is to prepare for cloud support, CloudOps, and junior cloud engineering work through practice, verification, and clear documentation.

## Current progress

Status as of November 11, 2026:

| Area | Completed work |
| --- | --- |
| AWS coursework | Completed all 13 modules of AWS Cloud Practitioner Essentials on September 22, 2026. |
| Certification | Earned AWS Certified Cloud Practitioner (CLF-C02) on October 17, 2026. |
| Foundation practice | Completed Linux, Bash, Git, networking, and beginner Python exercises and checkpoints; the original artifacts remain indexed below. |
| AWS hands-on labs | Completed and documented eight labs in [aws-cloud-labs](https://github.com/devgarza-ai/aws-cloud-labs), with validation scope and cleanup recorded for each. |
| Project 1: console build | Published [Resilient AWS CloudOps Web Service](https://github.com/devgarza-ai/aws-resilient-cloudops-service), including its two-AZ architecture, operations documentation, and measured recovery exercise. |
| Terraform practice | Published eight numbered exercises in [terraform-practice](https://github.com/devgarza-ai/terraform-practice): seven runnable configurations and one HCL reference. Deployment evidence varies by exercise and is documented in that repository. |
| Applied Terraform project | Deployed and verified the temporary [Pestech AWS preview](https://github.com/devgarza-ai/terraform-practice/tree/main/projects/pestech-preview) on November 6, 2026. Its Terraform source, provider lock file, deployment documentation, and desktop/mobile architecture layouts are published. |

Linux, Bash, Git, networking, and Python remain active reinforcement areas alongside AWS and Terraform practice.

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

## Related AWS and Terraform work

### AWS Cloud Labs

The eight completed labs in [aws-cloud-labs](https://github.com/devgarza-ai/aws-cloud-labs) cover:

| Lab | Focus |
| --- | --- |
| [01: Private S3 object access](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/01-s3-private-access) | Private storage and presigned sharing. |
| [02: EC2 launch and SSH](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/02-ec2-launch-and-ssh) | Linux provisioning, SSH troubleshooting, and encrypted EBS storage. |
| [03: VPC network foundations](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/03-vpc-network-foundations) | Subnets, routing, and S3 gateway endpoints. |
| [04: RDS for MySQL](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/04-rds-mysql-managed-database) | Managed database provisioning and readiness checks. |
| [05: IAM S3 read-only access](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/05-iam-s3-read-only) | Group-based permissions and access verification. |
| [06: Serverless event observability](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/06-serverless-event-observability) | DynamoDB Streams, Lambda, CloudWatch logs and alarms, and SNS notifications. |
| [07: Multi-AZ VPC security architecture](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/07-multi-az-vpc-security) | Public/private routing, tiered security groups, and custom network ACLs. |
| [08: S3 management-event investigation](https://github.com/devgarza-ai/aws-cloud-labs/tree/main/labs/08-s3-cloudtrail-investigation) | CloudTrail management-event investigation, identity verification, and IAM hardening. |

Each lab records its validation scope and cleanup state. Observed behavior, configuration checks, and design-only components are distinguished explicitly.

### Project 1: Resilient AWS CloudOps Web Service

The published [console-built portfolio project](https://github.com/devgarza-ai/aws-resilient-cloudops-service) connects a two-AZ VPC, private EC2 application servers, an Application Load Balancer, Auto Scaling replacement, Systems Manager administration, CloudWatch monitoring, and CloudTrail auditing.

Its [recovery incident report](https://github.com/devgarza-ai/aws-resilient-cloudops-service/blob/main/docs/incidents/recovery-incident.md) documents measured client impact, including failed requests and the recovered application state. This is a completed console implementation; its Terraform rebuild is planned.

### Terraform practice and Pestech preview

The [Terraform practice repository](https://github.com/devgarza-ai/terraform-practice) contains eight numbered exercises covering VPC foundations, HCL syntax, S3, remote state, EC2/Nginx bootstrapping, static website delivery, AWS data sources, and input variables. The HCL exercise is a reference; the other seven are runnable configurations. Course-based exercises and their validation records are separate from applied deployment evidence.

The [Pestech preview](https://github.com/devgarza-ai/terraform-practice/tree/main/projects/pestech-preview) is an applied Terraform deployment using EC2/Nginx, private S3 release storage, scoped IAM permissions, SSM deployment, and CloudFront viewer HTTPS. Its [verification record](https://github.com/devgarza-ai/terraform-practice/blob/main/projects/pestech-preview/docs/verification.md) documents runtime checks and a final Terraform plan with no pending changes. The [source-publication commit](https://github.com/devgarza-ai/terraform-practice/commit/028c976c786a64966c2658c41fd84d296f09b50a), dated November 7, 2026 (UTC), added the Terraform source and separate desktop/mobile architecture layouts.

Pestech was verified as a temporary preview. Production launch, live authentication, a shared customer database, email delivery, and live AI remain future work.

These repositories document personal learning and portfolio work. Guided practice and AI-assisted tooling or documentation are identified in their project records.

## Practice environment

I use WSL2 Ubuntu and LabEx for local foundation practice, and AWS Skill Builder and AWS Educate for AWS learning.

My documentation workflow is:

Edit → Check status → Review diff → Stage → Commit → Push → Verify on GitHub

## Planned next steps

1. Begin targeted applications using the published console portfolio project and supporting labs, focusing on remote U.S. cloud support, CloudOps, AWS/Linux support, junior cloud engineering, MSP, and contract opportunities.
2. Deepen Terraform practice and prepare for HashiCorp Certified: Terraform Associate (004).
3. Rebuild Project 1 with Terraform, then verify and document the infrastructure and recovery behavior.
4. Build Projects 2–3 with Terraform while continuing applications and portfolio improvements.
5. Prepare for AWS Certified Solutions Architect – Associate (SAA-C03) alongside practical work.
6. Continue AWS reinforcement through Cloud Quest and AWS Educate, with regular Linux, networking, Git, and Python review.

These are planned next steps. Completed work is identified in the progress summary and linked project records.

Learn → Practice → Document → Review → Repeat
