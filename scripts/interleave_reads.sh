#!/usr/bin/env bash

#This scripts interleaves paired end reads using khmer's interleave-reads.py sc$

for filename in *_1.trim.fq.gz
do
	# first, make the base by removing .trim.fq.gz
     	base=$(basename $filename .trim.fq.gz)
     	echo $base
	
	# now, construct the R2 filename by replacing R1 with R2
     	base2=${base/_1/_2}
     	echo $base2

     	# construct the output filename
     	output=${base/_1/}.pe.trim.fq.gz

     	(interleave-reads.py ${base}.trim.fq.gz ${base2}.trim.fq.gz --no-reformat | \
         gzip > $output)
done

