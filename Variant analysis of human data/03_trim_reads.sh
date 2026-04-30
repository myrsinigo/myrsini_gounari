#!/usr/bin/env bash

TRIMMED_DIR=/group_work/group2/Myrsini/trimmed
REPORTS_DIR=/group_work/group2/Myrsini/reports
READS_DIR=/group_work/group2/Myrsini/data/fastq

# Create output directories
mkdir -p "$TRIMMED_DIR"
mkdir -p "$REPORTS_DIR"


#father
    fastp \
      -i "${READS_DIR}/father_R1.fastq.gz" \
      -I "${READS_DIR}/father_R2.fastq.gz" \
      -o "${TRIMMED_DIR}/father_R1.trimmed.fastq.gz" \
      -O "${TRIMMED_DIR}/father_R2.trimmed.fastq.gz" \
      --qualified_quality_phred 15 \
      --length_required 25 \
      --unqualified_percent_limit 40 \
      --cut_front \
      --cut_tail \
      --detect_adapter_for_pe \
      --html "${REPORTS_DIR}/father_fastp.html" \
      --json "${REPORTS_DIR}/father_fastp.json"
#mother
    fastp \
      -i "${READS_DIR}/mother_R1.fastq.gz" \
      -I "${READS_DIR}/mother_R2.fastq.gz" \
      -o "${TRIMMED_DIR}/mother_R1.trimmed.fastq.gz" \
      -O "${TRIMMED_DIR}/mother_R2.trimmed.fastq.gz" \
      --qualified_quality_phred 15 \
      --length_required 25 \
      --unqualified_percent_limit 40 \
      --cut_front \
      --cut_tail \
      --detect_adapter_for_pe \
      --html "${REPORTS_DIR}/mother_fastp.html" \
      --json "${REPORTS_DIR}/mother_fastp.json"
#son
fastp \
      -i "${READS_DIR}/son_R1.fastq.gz" \
      -I "${READS_DIR}/son_R2.fastq.gz" \
      -o "${TRIMMED_DIR}/son_R1.trimmed.fastq.gz" \
      -O "${TRIMMED_DIR}/son_R2.trimmed.fastq.gz" \
      --qualified_quality_phred 15 \
      --length_required 25 \
      --unqualified_percent_limit 40 \
      --cut_front \
      --cut_tail \
      --detect_adapter_for_pe \
      --html "${REPORTS_DIR}/son_fastp.html" \
      --json "${REPORTS_DIR}/son_fastp.json"
