#!/bin/bash

for FILE in `ls *.kicad_mod`; do TMP=`mktemp` && cat $FILE | sed 's/\(.*(fp_text\ value.*)\)\ hide/\1/' > $TMP && mv $TMP $FILE; done

