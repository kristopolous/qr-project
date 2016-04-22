#!/bin/sh

[ -e cropped ] ||mkdir cropped

middle=/tmp/interim.png
cd images;
for i in *jpg; do
  convert "$i" -rotate 90 $middle
  ../aspectcrop -a 1020:850 "$i"  ../cropped/"$i"
done
