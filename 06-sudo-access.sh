#!/bin/bash
if ! sudo -v >/dev/null 2>&1; then
    echo "do not have sudo access"
    exit 1
fi
