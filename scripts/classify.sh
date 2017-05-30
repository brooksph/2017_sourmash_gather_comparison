#!/usr/bin/env bash 

#Classifcation of sequences into taxa using sourmash gather functionality by
#comparing signatures calculated with sourmash to a sequence bloom tree containing 
#sequences from respresenting the entirety of the NCBI Refseq and genbank databases 
 
~/sourmash/sourmash gather ../sigs/podar-reads.10k.sig ../sbt/refseq-k31.sbt.json ../sbt/genbank-k31.sbt.json -o ../results/refseq_and_genbank_gather_output_10k.csv
 
