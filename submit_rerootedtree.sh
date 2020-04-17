#!/bin/sh
#SBATCH -J tree_NS
#SBATCH --mem 48G
#SBATCH -n 10
#SBATCH -N 1
#SBATCH -p jic-medium,nbi-medium,RG-Diane-Saunders
#SBATCH -o tree_6_242_genes.%j.out
#SBATCH -e tree_6_242_genes.%j.err

source /tgac/software/testing/bin/raxml-8.0.20 # Loads required software
/tgac/software/testing/raxml/8.0.20/x86_64/raxmlHPC-PTHREADS-SSE3 -T 10 -s filtered.fasta -m GTRGAMMA -n tree_raw_rerooted.nwk -p 100 -o ET08/10 # Builds tree and reroots on sample ET08/10
