#!/bin/bash

PAPIS_HOME=~/Documents/bib
FI=$(cat $PAPIS_HOME/.cache.txt | sort -t '|' -n -r -b +2 | cut -d'|' -f1-4 | column -t -s"|" | dmenu -i -l 40)
ID=$(echo $FI | cut -d' ' -f1)
mupdf $(cat $PAPIS_HOME/.cache.txt | grep $ID | cut -d'|' -f5)
