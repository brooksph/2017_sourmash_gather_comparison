#This script uses khmers trim_low_abund.py to trim errant kmers 

for i in *pe.fq.gz
do 
	trim-low-abund.py -M 16e9 -k 20 $i
done
