#!/bin/bash

for (( c=1; c<=$3; c++ ))
do
  echo "DO $4-$c.txt"
  top -p $(pidof -s $1) -b -n $2 > $4-$c.txt
  echo "DONE $4-$c.txt"
done
