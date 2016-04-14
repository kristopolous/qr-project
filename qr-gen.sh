#!/bin/bash

cd src
for i in *txt; do
  cat $i | qrencode -ic --output=../dest/${i/txt/png}
done
