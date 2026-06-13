#!/bin/bash

echo "Project Phoenix Health Check"
echo "ERROR count:"
grep ERROR logs/*.txt | wc -l 
echo "WARNING count:"
grep WARNING logs/*.txt  | wc -l
echo "FAILED login count:"
grep -i FAILED logs/*.txt | wc -l

