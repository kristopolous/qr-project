#!/usr/bin/python3
from glob import glob
from shutil import copyfile
from subprocess import call
import sys

for fname in glob('*/*.txt'):
  print(fname)
  html_name = "html{0}html".format(fname[3:-3])
  copyfile("header.html", html_name)
  html = open(html_name, "a")
  with open(fname) as f:
    lines = f.readlines()

    title = lines[0].strip()
    author = lines[1].strip()

    count = len(lines) - 3
    cutoff = False

    html.write("<h1>{0}</h1>".format(title))
    html.write("<h2>{0}</h2>".format(author))

    columns = 1
    print (count)
    if count > 10:
      columns = 2
      cutoff = round(count / 2)
      html.write('<span>')

    newp = True
    line_num = 0

    for row in lines[3:]:
      row = row.strip()

      if line_num == cutoff:
        html.write('</span><span>')
        newp = True

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

      line_num += 1

    html.write("</p>")
    if cutoff:
      html.write('</span>')
    html.close()

  png_name = "output{0}png".format(fname[3:-3])
  call(['/usr/bin/wkhtmltoimage', html_name, png_name])
    
