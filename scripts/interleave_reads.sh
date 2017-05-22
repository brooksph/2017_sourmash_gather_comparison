#!/usr/bin/bash

#This scripts interleaves paired end reads using khmer's interleave-reads.py sc$

	for filename in *_R1*.trim.fastq.gz
	do
     		# first, make the base by removing .extract.fastq.gz
     		base=$(basename $filename .trim.fastq.gz)
     		echo $base

     		# now, construct the R2 filename by replacing R1 with R2
     		baseR2=${base/_R1/_R2}
     		echo $baseR2

     		# construct the output filename
     		output=${base/_R1/}.pe.trim.fq.gz

     		(interleave-reads.py ${base}trim.fq.gz ${baseR2}.fq.gz | \
         	gzip > $output)
	done

