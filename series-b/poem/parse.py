#!/usr/bin/python3
from glob import glob
import sys

for fname in glob('*/*.txt'):
  print(fname)
  with open(fname) as f:
    lines = f.readlines()

    title = lines[0].strip()
    author = lines[1].strip()

    print("<h1>{0}</h1>".format(title))
    print("<h2>{0}</h2>".format(author))

    newp = True
    for row in lines[3:]:
      row = row.strip()
      if newp:
        sys.stdout.write("<p>"); 
        newp = False
      elif len(row) > 0:
        sys.stdout.write("<br>")

      if len(row) == 0:
        print("</p>")
        newp = True
      else:
        print(row)

    print("</p>")

"""
for file */*.txt in txt; do
  num=0

  while read -r line
  do
    (( num ++ ))
    if [ $num -eq 1 ]; then
      echo "<h1>$line</h1>";
    elif [ $num -eq 2 ]; then
      echo "<h2>$line</h2>";
    fi
  done < $file

done
"""
