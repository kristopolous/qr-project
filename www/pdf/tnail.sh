#!/bin/bash

for i in *.pdf; do
  convert $i jpg:- | convert jpg:- -resize 420x ${i/pdf/jpg}
done
