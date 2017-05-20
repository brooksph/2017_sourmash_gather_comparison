#!/usr/bin/bash

#This scripts interleaves paired end reads using khmer's interleave-reads.py sc$

	for filename in *_R1*.fastq.gz
	do
     		# first, make the base by removing .extract.fastq.gz
     		base=$(basename $filename .fastq.gz)
     		echo $base

     		# now, construct the R2 filename by replacing R1 with R2
     		baseR2=${base/_R1/_R2}
     		echo $baseR2

     		# construct the output filename
     		output=${base/_R1/}.pe.fq.gz

     		(interleave-reads.py ${base}.fastq.gz ${baseR2}.fastq.gz | \
         	gzip > $output)
	done

