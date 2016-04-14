#!/bin/bash

qrgen() {
  cd src
  for i in *txt; do
    cat $i | qrencode -ic --output=../dest/${i/txt/png}
  done
  cd ..
}

label() {
  for i in dest/*png; do
    fname=`basename $i`
    name=`./namegen.sh`
    echo $name
    convert $i -filter box -resize 2048x -gravity south -font DejaVu-Sans-Mono -pointsize 60 -annotate 0x0 "$name" final/$fname
  done
}

label
