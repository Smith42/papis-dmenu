#!/bin/bash

PAPIS_HOME=~/Documents/bib
INFOS=()
COUNTER=0

for YAML in $(ls $PAPIS_HOME/*/info.yaml); do
    INFOS+="ID$(printf '%04d' $COUNTER) | $(cat $YAML | shyaml get-value title) | $(cat $YAML | shyaml get-value year) | $(cat $YAML | shyaml get-value author) | ${YAML%/*}/$(cat $YAML | shyaml get-value files | cut -d' ' -f2)\n";
    COUNTER=$((COUNTER+1))
done

echo -e $INFOS > $PAPIS_HOME/.cache.txt
