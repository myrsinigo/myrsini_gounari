#!/usr/bin/env bash

TRIMMED_DIR=/group_work/group2/Myrsini/trimmed_2
REPORTS_DIR=/group_work/group2/Myrsini/reports_2
READS_DIR=/group_work/group2/Myrsini/data/fastq

# Create output directories
mkdir -p "$TRIMMED_DIR"
mkdir -p "$REPORTS_DIR"


# Loop through all R1 files
for sample in father mother son
do
    fastp \
      -i "${READS_DIR}/${sample}_R1.fastq.gz" \
      -I "${READS_DIR}/${sample}_R2.fastq.gz" \
      -o "${TRIMMED_DIR}/${sample}_R1.trimmed.fastq.gz" \
      -O "${TRIMMED_DIR}/${sample}_R2.trimmed.fastq.gz" \
      --qualified_quality_phred 20 \
      --length_required 25 \
      --unqualified_percent_limit 80 \
      --cut_front \
      --cut_tail \
      --detect_adapter_for_pe \
      --html "${REPORTS_DIR}/${sample}_fastp.html" \
      --json "${REPORTS_DIR}/${sample}_fastp.json"
done


  
