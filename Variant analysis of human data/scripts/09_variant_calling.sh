#!/usr/bin/env bash

cd /group_work/group2/Myrsini/

mkdir -p variants

cd /group_work/group2/Myrsini/variants/ 

freebayes \
  -f /group_work/group2/Myrsini/data/reference/Homo_sapiens.GRCh38.dna.chromosome.20.fa \
  -r chr20:10018000-10220000 \
  /group_work/group2/Myrsini/merged_bam/merged.bam \
  > variants.vcf



#  samtools flagstat son.markdup.sorted.bam
#samtools flagstat mother.markdup.sorted.bam
#samtools flagstat father.markdup.sorted.bam
