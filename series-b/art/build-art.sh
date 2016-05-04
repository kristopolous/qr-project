#!/bin/sh

[ -e output ] || mkdir output

middle=/tmp/interim.png
cd src
for i in *jpg; do
  echo $i
  convert "$i" -rotate 90 $middle
  ../aspectcrop -a 1020:850 "$i"  ../output/"$i"
done
