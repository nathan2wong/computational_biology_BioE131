#!/bin/bash

a=$1
for i in $(seq 1 $1)
	do python3 ma.py BLOSUM62 example.fa > output/"$i.txt"
	echo "finished iteration $i"
done
cd output
cat * | awk '!a[$0]++' > multiplealignments.txt
cat multiplealignments.txt
