# Day 16 - The Keeper of the Keys

## Lab Completed

LabEx Junior System Administrator - DAY 05: The Keeper of the Keys

## Main Goal

Practice Linux user and access management by creating a new user, creating a home directory, setting a password, assigning group membership, verifying account information, and locking an old user account.

## Commands Practiced

* sudo useradd b.smith
* sudo useradd -m b.smith
* sudo passwd b.smith
* sudo grep "^b.smith:" /etc/shadow
* sudo usermod -aG developers b.smith
* groups b.smith
* id b.smith
* sudo usermod -L j.doe
* sudo grep "^j.doe:" /etc/shadow

## What I Learned

* `useradd` creates a new Linux user account.
* `useradd -m` creates a new user and automatically creates a home directory.
* `passwd` sets or changes a user password.
* `/etc/shadow` stores protected password hash information.
* `usermod -aG` adds a user to a supplementary group without removing existing group memberships.
* `groups USER` shows what groups a user belongs to.
* `id USER` shows the user's UID, GID, and group memberships.
* `usermod -L` locks a user account.

## Troubleshooting Notes

* I learned that some user management commands require `sudo` because they modify protected system files.
* I accidentally used the wrong order with `usermod -aG` at first.
* The correct order is `sudo usermod -aG GROUP USER`.
* I saw the `dquote>` prompt when I opened a quote but did not close it correctly.
* I learned that `Ctrl+C` is the best way to escape a stuck shell prompt.
* I used `groups` and `id` to verify that the user was added to the correct group.

## Cloud Engineering Connection

This lab connects to cloud engineering because user and access management are important on Linux servers. Cloud engineers need to understand how to create users, assign access, verify permissions, and disable accounts safely.

This also connects to identity and access management concepts. In AWS, IAM controls who can access cloud resources. In Linux, users and groups control who can access files, commands, and system resources.

## Key Takeaway

This lab helped me understand the Linux user lifecycle: create the user, create the home directory, set access, verify access, and lock old accounts when needed.
