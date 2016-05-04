#!/bin/bash
. ../tools/common.sh

_mkdir output

middle=/tmp/interim.png
cd src
num=0
for i in *jpg; do
  status $num "$i"
  convert "$i" -rotate 90 $middle
  ../aspectcrop -a 1020:850 "$i"  ../output/"$i"
  (( num++ ))
done
