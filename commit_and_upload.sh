#!/bin/bash
ftp_password=$1
files_to_upload=`git ls-files --others --modified`
for file_to_upload in $files_to_upload
do
	git add $file_to_upload
	#curl ftp...
done

git commit -m "save"
git pull -r
git push
