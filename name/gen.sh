#!/bin/sh
shuf animals | head -127 | pr -s" " -t -m colors -
