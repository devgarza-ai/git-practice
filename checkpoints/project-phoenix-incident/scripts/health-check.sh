#!/bin/bash

echo "Project Phoenix Health Check"
echo "ERROR count:"
grep -E "ERROR" checkpoints/project-phoenix-incident/logs/*.txt | wc -l 
echo "WARNING count:"
grep -E "WARNING" checkpoints/project-phoenix-incident/logs/*.txt | wc -l
echo "FAILED login count:"
grep -E "FAILED|failed" checkpoints/project-phoenix-incident/logs/*.txt | wc -l

