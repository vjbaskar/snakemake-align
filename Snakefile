#!/usr/bin/env python


ref_folder = "refs"
SAMPLES = ["KAPAP1_POS_A1","KAPAP2_POS_A3"]


# Get the names of the final output files
BAMS = expand("bams/{sample}.bam", sample = SAMPLES)
GENOME_NAME = "hg38"

# Genome raw files
GENOME_FA= ref_folder + "/" + GENOME_NAME + ".fa"
GENOME_FAI=ref_folder + "/" + GENOME_NAME + ".fa.fai"

# BWA indexing file
BWA_INDEX_FILE =  ref_folder + "/" + GENOME_NAME + ".fa.sa"


# The main rule where the final output files are requested
rule all:
    input: BAMS

include: "workflow/align.smk"
