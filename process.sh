#!/bin/bash

echo 'Running script....'

for ((c=1; c<=$2; c++))
do
  echo "Print $3-$c.txt"
  cat $3-$c.txt | grep $1 | awk '{print $9}' > $3-$c-processed.txt
done
