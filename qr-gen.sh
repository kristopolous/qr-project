#!/bin/bash

qrgen() {
  cd src
  for i in *txt; do
    cat $i | qrencode -ic --output=../dest/${i/txt/png}
  done
  cd ..
}

label() {
  cd dest
  for i in *png; do
    name=`./namegen.sh`
    echo $name
    convert $i -filter box -resize 2048x ../final/$i
  done
  cd ..
}

label
