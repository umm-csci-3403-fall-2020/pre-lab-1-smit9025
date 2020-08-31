#!/bin/bash
sed -E 's/\* ([[:alpha:]]+), ([[:alpha:]]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt
#awk 'match($0, /(\w+), (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r0_input.txt
