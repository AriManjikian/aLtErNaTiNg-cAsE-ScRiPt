#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <string>"
    exit 1
fi

result_string=""

for ((i = 0; i < ${#1}; i++)); do
    char="${1:$i:1}"    
    if ((i % 2 == 0)); then
        result_string+=$(echo "$char" | tr '[:upper:]' '[:lower:]')
    else 
        result_string+=$(echo "$char" | tr '[:lower:]' '[:upper:]')
    fi
done

echo "Modified string: $result_string"
echo -n "$result_string" | clip
echo "Modified string has been copied to the clipboard."