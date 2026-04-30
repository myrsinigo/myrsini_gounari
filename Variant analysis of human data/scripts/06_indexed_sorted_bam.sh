#!/usr/bin/env bash

cd /group_work/group2/Myrsini/

mkdir -p bam_files

cd /group_work/group2/Myrsini/bam_files/ 

for sample in son mother father
do
  bowtie2 \
    -x /group_work/group2/Myrsini/data/reference/Homo_sapiens.GRCh38.dna.chromosome.20.fa \
    -1 /group_work/group2/Myrsini/trimmed_2/${sample}_R1.trimmed.fastq.gz \
    -2 /group_work/group2/Myrsini/trimmed_2/${sample}_R2.trimmed.fastq.gz \
    --rg-id $sample \
    --rg SM:$sample \
    --rg LB:lib1 \
    --rg PL:ILLUMINA \
  | samtools view -bS \
  | samtools sort -o ${sample}.sorted.bam

  samtools index ${sample}.sorted.bam
done
