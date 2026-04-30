#!/usr/bin/env bash

cd /group_work/group2/Myrsini/

mkdir -p merged_bam

cd /group_work/group2/Myrsini/merged_bam/

samtools merge merged.bam /group_work/group2/Myrsini/bam_files/*.markdup.sorted.bam

samtools index merged.bam