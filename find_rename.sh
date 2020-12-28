#!/bin/bash
find . -type f -name 'ecd_resurs[0-9]*_dev.yaml' |
while IFS= read file_name
do
out_name="$file_name//dev/prod"
echo "renaming $file_name to $out_name"
    mv "$file_name" "$out_name"
done