#This script computes minhash signatures using sourmash

for i in *abundtrim 
do 
	~/dev/sourmash/sourmash compute -k 31 --scaled 1000 ${i}
done 

