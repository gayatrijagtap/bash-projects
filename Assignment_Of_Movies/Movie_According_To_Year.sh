#! /bin/bash

file=$1
year=$(cut -d'|' -f2 $file | sort -u)

for year in $year; do
movie=$(cut -d'|' -f1,2 $file | grep "$year" | cut -d'|' -f1)
echo $year
echo "$movie"
echo "**************"
done

