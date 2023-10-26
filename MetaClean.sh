#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

# file check
if [ ! -f "$filename" ]; then
    echo "File not found."
    exit 1
fi

# replace metadata with "Nothing to see here"
exiftool -all= -Comment="Nothing to see here" "$filename"

echo "Metadata cleared and replaced with 'Nothing to see here' in '$filename'."
