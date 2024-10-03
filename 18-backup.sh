#!/bin/bash

source_dir=$1
dest_dir=$2
days=${3:-14}

usage() {
    echo " usage: sh 18-backup.sh <source> <destination> <days(optional)>"
}

if [ $# -lt 2 ]; then
    usage
fi

for dir in "$$source_dir" "$dest_dir"; do
    if [ ! -d $dir ]; then
        echo " $dir does not exist...please check"
    fi
done

files=$(find "${source_dir}" -name "*.log" -mtime +14)

if [ -n "$files" ]; then
    echo "files are found"

else
    echo "no files older than $days"
fi





 
