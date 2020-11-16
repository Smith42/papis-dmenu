#!/bin/bash

PAPIS_HOME=~/Documents/bib
FI=$(cat $PAPIS_HOME/.cache.txt | cut -d'|' -f1-3 | dmenu -i -l 40)
mupdf $(cat $PAPIS_HOME/.cache.txt | grep "$FI" | cut -d'|' -f4)
