!#usr/bin/env bash 

#load GNU and python
module load GNU/6.2 
module load python/2.7.2 

#source virtual environment
source ~/env/bin/activate

#Compute minhash signatures using sourmash
~/sourmash/sourmash compute -k 31 --scaled 1000 SRR606249.pe.qc.fq.gz.abundtrim.gz -f -o SRR606249.pe.qc.fq.abundtrim.1k.sig | gzip

