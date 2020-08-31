#!/bin/bash
sed -E 's/\* ([[:alpha:]]+), ([[:alpha:]]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt # Regex for first file
#awk 'match($0, /(\w+), (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r0_input.txt

awk -F "[. ]+" '/My favorite sandwich is /{print "1. " $4, "\n2. "$(NF-1), "\n"}' r1_input.txt > r1_output.txt # Regex for second file

sed -E 's/\* sandwich with (\S+) (for here|to go)/1. \1\n2. \2\n/' r2_input.txt > r2_output.txt # Regex for third file
