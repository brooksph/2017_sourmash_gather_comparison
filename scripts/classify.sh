#This script classifys sequences into taxa using sourmash sbt gather functionality
#comparing signatures calculated with sourmash to a sequence bloom tree containing 
#sequences from respresenting the entirety of the NCBI Refseq database 

for i in *sig 
do 
	~/dev/sourmash/sourmash sbt gather microbes.k31.sbt *sig --csv ${i}_sbt_gather_output.csv
done 
