#!/usr/bin/python3
import wand

def make_image(content):
  print(content)

with open('prompts.txt') as f:
  content = f.readlines()
  for prompt in content:
    make_image(prompt)
