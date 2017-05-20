#!/usr/bin/bash

#This script trims sequences using trimmomatic

TrimmomaticPE SRR1976948_1.fastq.gz \
              SRR1976948_2.fastq.gz \
     SRR1976948_1.qc.fq.gz s1_se \
     SRR1976948_2.qc.fq.gz s2_se \
     ILLUMINACLIP:TruSeq2-PE.fa:2:40:15 \
     LEADING:2 TRAILING:2 \
     SLIDINGWINDOW:4:2 \
     MINLEN:25
