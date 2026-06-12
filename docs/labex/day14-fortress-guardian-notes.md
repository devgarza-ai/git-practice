# Day 14 - Fortress Guardian Lab

## Lab Completed
Fortress Guardian

## Main Task 
The recent crisis has highlighted the need for robust security measures. A new contractor will be joining the team to help accelerate development, and you must ensure that access controls are perfectly configured. You'll need to create secure file systems, assign precise ownership, set granular permissions, and establish collaborative workspaces that protect TechNova's intellectual property

## Commands Practiced 
- chmod 600 
- chmod 750
- chmod 2770
- chown -R
- newgrp
- setgid "2" 3 numbers indicating whethere r,w,x
- ls -l
- ls -ld

## New Concepts Learned
Using setgid or numeric 2 before the standard three permissions digit to Set group ID so the owner and developers caan both read, write and enter the src directory using sudo chmod 2770 ~/project/phoenix_project/src

## Permission Notes
- using chmod to change permissions for owners, groups and others 
- using setgit to set group ID

## Troubleshooting Notes
Newer to using setgit or numeric form. Used chmod to set the group ID. 

## Cloud Engineering Connection 
Cloud engineers often create files and set up basic permissions for users on large servers. This helps balance directory security and is very useful in the AWS EC2 instances.
