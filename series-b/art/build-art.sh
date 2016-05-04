#!/bin/sh

[ -e cropped ] ||mkdir cropped

middle=/tmp/interim.png
cd output
for i in *jpg; do
  echo $i
  convert "$i" -rotate 90 $middle
  ../aspectcrop -a 1020:850 "$i"  ../cropped/"$i"
done
