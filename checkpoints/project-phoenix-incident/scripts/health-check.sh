#!/bin/bash

echo "Project Phoenix Health Check"
echo "ERROR count:"
grep ERROR logs/*.txt 
echo "WARNING count:"
grep WARNING logs/*.txt 
echo "FAILED login count:"
grep -i FAILED logs/*.txt

