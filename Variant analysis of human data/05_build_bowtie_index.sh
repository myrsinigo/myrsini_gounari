#!/usr/bin/env bash

cd /group_work/group2/Myrsini/data/reference

#bowtie2-build genome.fa genome_index
bowtie2-build Homo_sapiens.GRCh38.dna.chromosome.20.fa Homo_sapiens.GRCh38.dna.chromosome.20.fa
#indexed fai file - reference genome
samtools faidx Homo_sapiens.GRCh38.dna.chromosome.20.fa