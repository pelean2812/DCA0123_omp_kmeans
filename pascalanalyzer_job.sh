#!/bin/bash
#SBATCH --partition=intel-128
#SBATCH --job-name=PaScal_job
#SBATCH --output=PaScal_job%j.out
#SBATCH --error=PaScal_job%j.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=0-5:10

pascalanalyzer -t aut -c 1,2,4,8,16,32,64,128 -i 7,13,25,50,100,200,400,800 -r 5 -o main_read_txt.json ./main_read_txt

