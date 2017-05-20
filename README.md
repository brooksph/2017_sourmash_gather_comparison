# sourmash_gather_comparison
comparing sourmash gather functionality to other tools with similar capabilities

Datasets:

#454 Reads single-end reads
SRR606245_pass_2.fastq.gz (141.8M bases) 

#Illumina Miseq paired-end reads
SRR606249_pass_1.fastq.gz  (11.1G bases)
SRR606249_pass_2.fastq.gz

This analysis can be reporduced using the following commands.


#Retrieve sequences from NCBI SRA 
./scripts/get_sequences.sh

#Change permissions on sequence files to make them read only 
chmod u-w fastq/* 

#Copy seqeunce files to working directory 
cd work 
cp ../fastq/* .

#Evalute read quality 
fastqc *fq.gz 

#Trim reads based on quality scores in sliding window 
./../scripts/trim.sh

#Interleave reads 
./../interleave_reads.sh

#Trim errant kmers from reads using khmer 
./../abundtrim.sh

#Calculate minhash signatures for reads
./../compute.sh

#Build database with knowns and compare to sbt with RefSEQ and Genbank 

#Classify sequences using sourmash sbt gather 
./../classify.sh

#Downsample signatures 


