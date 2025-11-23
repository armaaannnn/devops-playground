#!/bin/bash

echo "User: $(whoami)"
echo "Current directory: $(pwd)"

echo "Listing files:"
ls -lah

echo "Disk usage:"
df -h

echo "Memory info:"
free -h

echo "Processes:"
ps aux --sort=-%mem | head -n 10
