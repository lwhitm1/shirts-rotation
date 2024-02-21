#!/bin/bash

#SBATCH --partition=amilan
#SBATCH --job-name=53l_biphenyl
#SBATCH --output=53l_biphenyl.%j.out
#SBATCH --time=06:30:00
#SBATCH --nodes=4
#SBATCH --mail-type=ALL
#SBATCH --mail-user=liwh2139@colorado.edu

module purge
module load gcc
module load openmpi/4.1.1
module load gromacs


python prod_run.py
