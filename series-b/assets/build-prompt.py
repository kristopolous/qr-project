#!/usr/bin/python3
import wand

def make_image(content):
  print(content)

with open('prompts.txt') as f:
  content = f.readlines()

  make_image(content)
