#!/bin/bash
#
# Create a backup of a file with unique filename
# Expects a single argument (filename to backup)

if [ $# -eq 0 ]; then
        echo "Error: No argument provided"
        exit 1
fi

backup(){
    local filename=$(basename "$1")
    local file_extension="${filename##*.}"
    local file_basename="${filename%.*}"
    local timestamp=$(date +%Y%m%d%H%M%S)

    local new_filename="${file_basename}_copy_${timestamp}.${file_extension}"

    cp $1 $new_filename
    echo "Backup created: $new_filename"
}
backup $1