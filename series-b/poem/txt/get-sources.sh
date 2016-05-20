#!/bin/sh

base=https://www.gutenberg.org/ebooks/

for path in 12759 16786 12924 12925; do
  name=$path.txt.utf-8
  [ -e $name ] || wget "$base/$path.txt.utf-8"
done
