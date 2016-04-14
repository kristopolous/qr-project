#!/bin/sh
shuf name/animals | head -127 | pr -s" " -t -m name/colors - | shuf | head -1
