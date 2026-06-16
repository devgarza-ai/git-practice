# Day 08 - The Software Steward

## Lab Completed
LabEx Junior SysAdmin - Day 08: The Software Steward

## Main Goal
Practice basic software/package management on a Debian-based Linux system using `apt`.

## Commands Practiced
- sudo apt update
- sudo apt install
- apt show
- sudo apt remove
- sudo apt autoremove

## What I Learned
`sudo apt update` refreshes the package list from the software repositories. It does not upgrade installed packages.

`sudo apt install` installs software packages.

`apt show` displays useful package information such as version, description, dependencies, and maintainer details.

`sudo apt remove` removes a selected package from the system.

`sudo apt autoremove` removes unused packages and dependencies that were installed automatically and are no longer needed.

## What I Practiced
- Updated package repositories with `sudo apt update`
- Installed software using `sudo apt install`
- Verified package details using `apt show`
- Removed an obsolete package using `sudo apt remove`
- Cleaned unused dependencies using `sudo apt autoremove`

## Troubleshooting Notes
- I tried `sudo apt delete figlet`, but `delete` is not a valid `apt` operation.
- The correct command is `sudo apt remove figlet`.
- I also saw that `apt remove all` does not work because `all` is treated like a package name.
- `sudo apt autoremove` is used to remove unused dependencies that are no longer needed.

## Cloud Engineering Connection
Cloud engineers often manage Linux servers where packages must be installed, updated, verified, removed, and cleaned up safely. This lab connects directly to maintaining secure, stable, and clean server environments.

## Key Takeaway
`apt` is the package manager used on Debian/Ubuntu systems. Knowing how to update, install, inspect, remove, and clean packages is a core Linux administration skill.
