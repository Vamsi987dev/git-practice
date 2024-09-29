#!/bin/bash

file="08-file-extension.sh"

case "$file" in
    *.zip)
        echo "zip file";;
    *.txt)
        echo "Txt file";;
    *.sh)
        echo "sh file";;
    *)
        echo "unknown file type";;
esac