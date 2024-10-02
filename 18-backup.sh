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

if [ ! -d $source_dir ]; then
    echo "$source_dir does not exist... please check"
fi

if [ ! -d $dest_dir ]; then
    echo "$dest_dir does not exist... please check"
fi

files=$(find ${source_dir} -name "*.log" -mtime +14)

if [ ! -z $files ]; then
    echo "files are found"
else
    echo "no files older than $days"
fi


 
