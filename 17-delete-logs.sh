#!/bin/bash

log_dir="/logs"

find "$log_dir" -type f -name "*.log" -mtime +14 -exec rm -f {} \;

echo "Deleted .log files older than 14 days in $log_dir"
