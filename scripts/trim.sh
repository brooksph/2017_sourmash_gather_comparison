#This script will trim the illumina paired end  sequences using trimmomatic

Trimmomatic PE SRR606249_pass_1.fastq.gz \
	SRR606249_pass_2.fastq.gz \
     	SRR606249_pass_1.trim.fq.gz s1_se \
     	SRR606249_pass_2.trim.fq.gz s2_se \
     	ILLUMINACLIP:TruSeq2-PE.fa:2:40:15 \
     	LEADING:2 TRAILING:2 \
     	SLIDINGWINDOW:4:2 \
     	MINLEN:25
