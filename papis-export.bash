#!/bin/bash

PAPIS_HOME=~/Documents/hertsDegree/bib
FI=$(cat $PAPIS_HOME/.cache.txt | cut -d'|' -f1-3 | dmenu -i -l 40)
papis export --format bibtex "title : $(cat $PAPIS_HOME/.cache.txt | grep "$FI" | cut -d'|' -f1)"
