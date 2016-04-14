#!/bin/bash

qrgen() {
  echo -e "\nQR code generation"
  for i in src/*txt; do
    fname=`basename $i`
    dest=${fname/txt/png}
    if [ -e dest/$dest ]; then
      echo " * $dest exists"
    else
      echo " * $dest"
      cat $i | qrencode -ic --output=dest/$dest
    fi
  done
}

label() {
  echo -e "\nLabeling"
  for  i in dest/*png; do
    fname=`basename $i`
    if [ ! -e final/$fname ]; then
      name=`./namegen.sh`
      echo " * $name = $fname"
      convert $i -filter box -resize 2048x -gravity south -font DejaVu-Sans-Mono -pointsize 60 -annotate 0x0 "$name" final/$fname
    else
      echo " * $fname already generated"
    fi
  done
}

qrgen
label

