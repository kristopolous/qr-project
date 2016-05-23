#!/bin/bash

cp ../../series-b/sheets/output/*.pdf .
for i in *.pdf; do
  convert $i jpg:- | convert jpg:- -resize 420x -quality 50 -strip ${i/pdf/jpg}
done
