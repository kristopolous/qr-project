#!/bin/sh

pull() {
  wget -R png,jpg,gif -rc -np http://poetry.eserver.org/
}

convert() {
  cd poetry.eserver.org
  dos2unix -l *.txt *.html
}

convert
