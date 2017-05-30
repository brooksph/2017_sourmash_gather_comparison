#!/bin/sh -login
#PBS -A ged 
#PBS -l walltime=02:00:00:00,nodes=01:ppn=10,mem=20gb
#PBS -M philliptbrooks@gmail.com

cd ${PBS_O_WORKDIR}

#Classifcation of sequences into taxa using sourmash gather functionality by
#comparing signatures calculated with sourmash to a sequence bloom tree containing 
#sequences from respresenting the entirety of the NCBI Refseq and genbank databases 
 
~/sourmash/sourmash gather ../sigs/podar-reads.10k.sig ../sbt/refseq-k31.sbt.json ../sbt/genbank-k31.sbt.json -o refseq_and_genbank_gather_output_10k.csv
 
