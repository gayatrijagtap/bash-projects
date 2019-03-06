#! /bin/bash

file=$1
a=$(cat $file | cut -d'|' -f6 | uniq)
b=$(cat $file | cut -d'|' -f1,6)
for i in $a;
do
  c=$(grep "$a" $b | cut -d'|' -f1)
  echo "$c"
done
