#!/bin/bash

PAPIS_HOME=~/Documents/bib
INFOS=()

for YAML in $(ls $PAPIS_HOME/*/info.yaml); do
    INFOS+="$(cat $YAML | shyaml get-value title) | $(cat $YAML | shyaml get-value year) | $(cat $YAML | shyaml get-value author) | ${YAML%/*}/$(cat $YAML | shyaml get-value files | cut -d' ' -f2)\n";
done

echo -e $INFOS > $PAPIS_HOME/.cache.txt
