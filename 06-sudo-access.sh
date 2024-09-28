#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0]; then
    echo "user do not have access"
else    
    echo "user has access"
fi