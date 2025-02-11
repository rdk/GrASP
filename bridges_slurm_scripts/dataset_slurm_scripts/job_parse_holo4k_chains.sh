#!/bin/bash
#SBATCH -p RM-shared
#SBATCH --ntasks-per-node=24
#SBATCH --time 12:00:00
#SBATCH --nodes=1
#SBATCH --job-name="parsing holo4k_chains"
#SBATCH --mail-user=zsmith7@umd.edu
#SBATCH --mail-type=ALL


ml anaconda3
conda activate # source /opt/packages/anaconda3/etc/profile.d/conda.sh
conda activate ob
sh reset_dataset.sh holo4k_chains
python3 parse_files.py holo4k_chains
