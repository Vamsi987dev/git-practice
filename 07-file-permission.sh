#!/bin/bash

file="01-Hello-World.sh"

if [ -r "$file"];then
    echo "readable"
elif [ -w "$file"];then
    echo "writable"
elif [ -x "$file"];then
    echo "executable"
else
    echo "No permission"
fi