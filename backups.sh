#!/bin/bash

dir_backup="$1"
backup_dir="$2"
amount_backup="$3"
date_now=`date +"%H.%M.%S_%d-%m-%Y"`


mkdir /home/aleks/"$dir_backup"

mkdir /home/aleks/"$backup_dir"

tar -vczf "$dir_backup-$date_now".tar.gz "$dir_backup"

file_count=`find /home/aleks/"$backup_dir" -type f | wc -l`

if [ "$file_count" -ge "$amount_backup" ]; then
old_file=`ls -t "$backup_dir" | tail -n 1`
rm /home/aleks/"$backup_dir"/"$old_file"
mv "$dir_backup-$date_now".tar.gz "$backup_dir"
echo "The oldest archive dir $dir_backup is removed and the new one is added to the dir $backup_dir"
else
mv "$dir_backup-$date_now".tar.gz "$backup_dir"
echo "New archive dir $dir_backup is added to the dir $backup_dir"
fi
