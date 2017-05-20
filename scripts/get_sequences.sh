#!/usr/bin/env bash

#This script uses fastq dump to retrieve sequences from the NCBI SRA 

for i in $(cat scripts/srr_sequence_id.txt)
do 
	fastq-dump --outdir fastq --gzip --skip-technical  --readids --read-filter pass --dumpbase --split-files --clip ${i}
done
