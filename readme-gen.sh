#!/bin/sh

[ -e readme.md ] && rm readme.md
cd final
for i in *png; do
  echo "<img src=https://raw.githubusercontent.com/kristopolous/qr-project/master/final/$i>" >> ../readme.md
done
