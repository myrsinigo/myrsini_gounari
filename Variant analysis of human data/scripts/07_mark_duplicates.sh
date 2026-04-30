#!/usr/bin/env bash

cd /group_work/group2/Myrsini/bam_files/

#mkdir -p markdup_files

#cd /group_work/group2/Myrsini/markdup_files/

for sample in son mother father
do
  gatk MarkDuplicates \
    --INPUT ${sample}.sorted.bam \
    --OUTPUT ${sample}.markdup.bam \
    --METRICS_FILE ${sample}.metrics.txt

  samtools sort ${sample}.markdup.bam \
    -o ${sample}.markdup.sorted.bam

  samtools index ${sample}.markdup.sorted.bam
done
