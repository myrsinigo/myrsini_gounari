#  Variant Analysis of Human Trio (Chromosome 20)

##  Overview

This project implements an end-to-end variant calling pipeline on Illumina sequencing data from a family trio (father, mother, and child). The workflow includes quality control, 
read trimming, alignment, duplicate removal, variant calling, and visualization, focusing on a target region of chromosome 20.

-------------------------------------------------------------------------------------

##  Objective

Identify SNPs and INDELs in the region:

**chr20:10,018,000–10,220,000**

and analyze inheritance patterns across the trio.

-------------------------------------------------------------------------------------

##  Dataset

* Source: Public training dataset (Illumina paired-end reads)
* Samples:

  * Father
  * Mother
  * Child
* Format: FASTQ

> Note: No sensitive or personal human data is included.

-------------------------------------------------------------------------------------

##  Tools & Technologies

* FastQC – Quality control
* fastp – Adapter trimming and filtering
* Bowtie2 – Read alignment
* SAMtools – BAM processing and indexing
* GATK – Duplicate marking
* FreeBayes – Variant calling
* IGV – Visualization
* MultiQC – Aggregated QC reporting

-------------------------------------------------------------------------------------

##  Pipeline Overview

```
FASTQ → QC → Trimming → Alignment → BAM processing → Duplicate removal → Variant calling → Visualization
```

### Steps:

1. Quality control of raw reads using FastQC
2. Adapter trimming and filtering using fastp
3. Post-trimming QC
4. Reference genome indexing
5. Alignment using Bowtie2 with read groups
6. BAM sorting and indexing
7. Duplicate marking using GATK
8. Merging BAM files
9. Variant calling using FreeBayes (target region only)
10. Visualization in IGV
11. QC summary using MultiQC

-------------------------------------------------------------------------------------

##  Results

* Adapter contamination detected in raw reads and successfully removed after trimming
* High-quality reads retained after filtering
* Duplicate reads identified and removed
* Variants detected in the target region

### Variant Summary *(update with your values)*:

* Total variants: XXXX
* SNPs: XXXX
* INDELs: XXXX

-------------------------------------------------------------------------------------

##  Analysis & Insights

* Adapter trimming significantly improved read quality
* Duplicate reads can introduce bias in variant calling and were removed
* Read groups were added to distinguish samples during joint analysis
* Variant quality assessed using metrics such as depth (DP) and quality score (QUAL)
* Trio analysis enabled comparison of inheritance patterns across samples

-------------------------------------------------------------------------------------

##  Visualization

Variants and alignments were inspected using IGV for validation.

> Example region analyzed:
> **chr20:10,026,397–10,026,638**

(Screenshots available in `results/igv/`)

-------------------------------------------------------------------------------------

##  How to Run

### 1. Download data

```bash
wget https://ngs-introduction-training.s3.eu-central-1.amazonaws.com/project1.tar.gz
tar -xvf project1.tar.gz
```

### 2. Run pipeline

```bash
bash scripts/01_download_data.sh
bash scripts/02_run_fastqc.sh
bash scripts/03_trim_reads.sh
bash scripts/04_align_reads.sh
bash scripts/05_variant_calling.sh
```

---

##  Project Structure

```
├── data/          # Input data (not included or minimal)
├── scripts/       # Pipeline scripts
├── results/       # QC reports, VCFs, summaries, screenshots
├── README.md
```

-------------------------------------------------------------------------------------

##  Limitations

* Analysis restricted to a small genomic region
* Training dataset used
* No clinical or functional validation performed

-------------------------------------------------------------------------------------

##  Future Work

* Add variant annotation (ClinVar, COSMIC)
* Automate workflow using Snakemake or Nextflow
* Extend to whole-genome or cancer datasets
* Perform functional impact analysis of variants

-------------------------------------------------------------------------------------

##  Key Skills Demonstrated

* NGS data processing
* Variant calling pipelines
* Linux and Bash scripting
* Bioinformatics tool integration
* Data interpretation and visualization

-------------------------------------------------------------------------------------

