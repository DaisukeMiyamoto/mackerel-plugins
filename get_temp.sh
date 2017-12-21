#!/bin/bash
# get CPU temperature
# this plugin needs lm-sensor package for sensors command

MAX=$(sensors | wc -l)

for ID in $(seq 0 ${MAX}); do
    TEMP=$(sensors | grep "Core ${ID}:"  | sed 's/[\t ]\+/\t/g' | cut -f3 | sed -e 's/[^0-9.]//g')
    if [ -n "$TEMP" ]; then
	echo -e "temp.${ID}\t$TEMP\t$(date +%s)"
    fi
done
