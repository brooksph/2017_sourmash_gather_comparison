#!/usr/bin/env bash 

#Classifcation of sequences into taxa using sourmash gather functionality by
#comparing signatures calculated with sourmash to a sequence bloom tree containing 
#sequences from respresenting the entirety of the NCBI Refseq and genbank databases 
 
~/sourmash/sourmash gather SRR606249.pe.qc.fq.abundtrim.1k.sig ../sbt/refseq-k31.sbt.json ../sbt/genbank-k31.sbt.json -o ../results/${i}refseq_and_genbank_gather_output_1k.csv
 
