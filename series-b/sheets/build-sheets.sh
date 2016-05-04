#!/bin/bash

build() {
  what=$1
  page=0
  row=0
  col=0
  for i in ../$what/output/*.png; do
    if [ $row -eq 0 ]; then 
      echo "<span id='col$col'>"
    fi

    echo "<img src='$i'>"
    (( row ++ ))
    if [ $row -eq 3 ]; then
      (( col ++ ))
      row=0
    fi

    if [ $col -eq 2 ]; then
      (( page++ ))
      col=0
    fi

    echo "$page $col $row"
  done
}

build prompt
#/home/chris/proggies/wkhtmltox/bin/wkhtmltopdf -T 0 -B 0 -R 0 -L 0
#--print-media-type -s Letter
#/home/chris/code/ghub/qr-project/series-b/sheets/test.html out.pdf

