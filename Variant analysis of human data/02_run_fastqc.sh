#!/usr/bin/env bash
cd /group_work/group2/Myrsini/data/fastq

#fastqc *.fastq.gz
# Create output directory
mkdir -p fastqc_results

# Run FastQC on all gzipped FASTQ files
fastqc *.fastq.gz -o fastqc_results

# Run MultiQC
multiqc .