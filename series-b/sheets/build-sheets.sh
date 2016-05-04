#!/bin/bash

generate() {
  cd html
  for i in *html; do
    pdf=${i/html/pdf}
    ../wkhtmltopdf \
      -T 0 -B 0 -R 0 -L 0 \
      --print-media-type -s Letter \
      $i ../output/$pdf
  done
}

build() {
  ext=$2
  what=$1
  page=0
  row=0
  col=0

  cd html
  for i in ../../$what/output/*.$ext; do
    if [ $row -eq 0 ]; then 
      if [ $col -eq 0 ]; then
        fname=$what-$page.html
        cp ../header.html $fname
      fi
      echo "<span id='col$col'>" >> $fname
    fi

    echo "<div><img src='$i'></div>" >> $fname
    (( row ++ ))
    if [ $row -eq 3 ]; then
      echo "</span>" >> $fname
      (( col ++ ))
      row=0
    fi

    if [ $col -eq 2 ]; then
      (( page++ ))
      col=0
    fi

    #echo "$fname $col $row"
  done
  cd ..
}

build prompt png
build art jpg
generate

