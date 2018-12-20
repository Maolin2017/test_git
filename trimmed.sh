#!/bin/bash

while read line
do
	old_name=`echo $line | cut -d " " -f1`
	new_name=`echo $line | cut -d " " -f2`
	#echo ${old_name}, ${new_name}
	#先输出看一下是否正确echo flexbar --pre-trim-left 13 --max-uncalled 300 --min-read-length 25 --threads 20 --zip-output GZ --reads ../sra_fastq/${old_name}_1.fastq.gz --reads2 ../sra_fastq/${old_name}_2.fastq.gz --target ./${new_name}
	flexbar --pre-trim-left 13 --max-uncalled 300 --min-read-length 25 --threads 20 --zip-output GZ --reads ../sra_fastq/${old_name}_1.fastq.gz --reads2 ../sra_fastq/${old_name}_2.fastq.gz --target ./${new_name}
done<../rename.txt
#flexbar --pre-trim-left 13 --max-uncalled 300 --min-read-length 25 --threads 20 --zip-output GZ --reads ../sra_fastq/$line{$1}_1.fastq.gz --reads2 ../sra_fastq/SRR3234387_2.fastq.gz --target ./RNA-seq_17c_0min_rep1





