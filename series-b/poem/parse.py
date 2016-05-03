#!/usr/bin/python3
from glob import glob
from shutil import copyfile
import sys

for fname in glob('*/*.txt'):
  print(fname)
  copyfile("header.html", "temp.html")
  html = open("temp.html", "a")
  with open(fname) as f:
    lines = f.readlines()

    title = lines[0].strip()
    author = lines[1].strip()

    html.write("<h1>{0}</h1>".format(title))
    html.write("<h2>{0}</h2>".format(author))

    newp = True
    for row in lines[3:]:
      row = row.strip()
      if newp:
        html.write("<p>"); 
        newp = False
      elif len(row) > 0:
        html.write("<br>")

      if len(row) == 0:
        html.write("</p>")
        newp = True
      else:
        html.write(row)

    html.write("</p>")
    html.close()

