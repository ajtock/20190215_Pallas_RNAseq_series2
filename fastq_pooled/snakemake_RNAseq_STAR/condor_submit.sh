#!/bin/bash

source activate RNAseq_mapping
snakemake -p --cores 32
conda deactivate
