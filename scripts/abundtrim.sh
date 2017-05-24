#This script uses khmers trim_low_abund.py to trim errant kmers 

for i in *pe.trim.fq.gz
do 
	trim-low-abund.py --max-memory-usage 2e9 --ksize 20 $i --gzip
done
