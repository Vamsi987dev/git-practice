#!/bin/bash

source_dir=$1
dest_dir=$2
days=${3:-14}
timestamp=$( date +%Y-%m-%d-%H-%M-%S )

usage() {
    echo " usage: sh 18-backup.sh <source> <destination> <days(optional)>"
}

if [ $# -lt 2 ]; then
    usage
fi

for dir in "$source_dir" "$dest_dir"; do
    if [ ! -d "$dir" ]; then
        echo "$dir does not exist...please check"
    fi
done

files=$(find "${source_dir}" -name "*.log" -mtime +14)

if [ -n "$files" ]; then
    echo "files are found"
    zip_file="$dest_dir/app-logs-$timestamp.zip"
    zip "$zip_file" $files
    if [ -f "$zip_file" ]; then
        echo "Files have been successfully zipped into $zip_file"
        #remove the files after zipping
        while IFS= read -r file
        do
            echo "deleting file: $file"
            rm -rf $file
        done <<< $files

    else
        echo "Failed to create the zip file"
        exit 1
    fi
else
    echo "no files older than $days"
fi







 
