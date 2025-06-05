#!/bin/bash

for sample in g1_01 g1_02 g1_03 g3_01 g3_02 g3_03 
do
  echo "Mapeando muestra: $sample"
  
  STAR --runThreadN 16 \
    --genomeDir Index_STAR_chr4 \
    --readFilesIn ../Datos_RNA_seq_mosca/${sample}_R1.fastq ../Datos_RNA_seq_mosca/${sample}_R2.fastq \
    --outSAMtype BAM SortedByCoordinate \
    --quantMode GeneCounts \
    --outSAMstrandField intronMotif \
    --outFileNamePrefix alignments_STAR/${sample}_ 
done
