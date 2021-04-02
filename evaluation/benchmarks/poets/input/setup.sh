#!/bin/bash

# FIXME: when compression is ready, apply to all PG books

# wget ndr.md/data/pg.xz | tar -xf 

if [[ "$1" == "-c" ]]; then
    rm -f genesis exodus
    exit
fi

if [ ! -f ./genesis ]; then
  curl -sf http://www.gutenberg.org/cache/epub/8001/pg8001.txt > genesis
fi 

if [ ! -f ./exodus ]; then
  curl -sf http://www.gutenberg.org/cache/epub/8001/pg8001.txt > exodus
fi
