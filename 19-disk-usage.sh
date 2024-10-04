#!/bin/bash

threshold=75
disk_usage=$( df / | grep / | awk '{ print $5 }' | sed 's/%//g')

from_address="sender@example.com"
to_address="recipient@example.com"
subject="Disk Space Alert on $(hostname)"

if [ $disk_usage -gt $threshold ]; then
    echo "disk usage is above $threshold%. currently at $disk_usage%"
    echo "Disk usage is currently at $disk_usage% on $(hostname)." | mail -s "$subject" -r "$from_address" "$to_address"
    echo "Alert email sent to $to_address."
else
    echo "disk usage is below $threshold%. currently at $disk_usage%"
fi
