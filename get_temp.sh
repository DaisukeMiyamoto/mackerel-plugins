#!/bin/bash
# get CPU temperature
# this plugin needs lm-sensor package for sensors command

echo -e "temp.all\t$(sensors | grep temp1 | sed 's/[\t ]\+/\t/g' | cut -f2 | sed -e 's/[^0-9.]//g')\t$(date +%s)"
