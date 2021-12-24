#!/bin/bash

files=$(grep  " jane " ../data/list.txt | cut -d' ' -f3)
for i in $files; do
 if test -e $HOME$i; then
  echo $HOME$i >> oldFiles.txt
else
  echo "File doesn't exist"
fi
done
