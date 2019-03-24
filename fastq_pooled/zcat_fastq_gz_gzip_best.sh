#!/bin/bash

# Usage:
# time (csmit -m 10G -c 1 "bash ./zcat_fastq_gz_gzip_best.sh RNAseq-Col-series2_S1 wt_RNAseq_Rep2_R1 wt_RNAseq_Rep2_R2") 2> wt_RNAseq_Rep2.time

inName=$1
outNameR1=$2
outNameR2=$3

if [ ! -f "$outNameR1.fastq.gz" ]; then
  zcat /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L001_R1_001.fastq.gz" \
       /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L002_R1_001.fastq.gz" \
       /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L003_R1_001.fastq.gz" \
       /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L004_R1_001.fastq.gz" \
       | gzip -c -k --best > $outNameR1.fastq.gz;
else
  echo "skipping $outNameR1"
fi

if [ ! -f "$outNameR2.fastq.gz" ]; then
  zcat /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L001_R2_001.fastq.gz" \
       /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L002_R2_001.fastq.gz" \
       /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L003_R2_001.fastq.gz" \
       /home/ajt200/20190215_Pallas_RNAseq_series2/$inName"_L004_R2_001.fastq.gz" \
       | gzip -c -k --best > $outNameR2.fastq.gz;
else
  echo "skipping $outNameR2"
fi
