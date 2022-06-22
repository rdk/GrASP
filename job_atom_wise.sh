#!/bin/bash
#SBATCH -N 1
#SBATCH -p GPU-shared
#SBATCH -t 48:00:00
#SBATCH --gpus=v100-32:4
#SBATCH --ntasks-per-node=8
#SBATCH --job-name="scPDB GPU Null Self Edges, Open Babel"
#SBATCH --mail-user=strobelm@umd.edu
#SBATCH --mail-type=ALL

## train.py args node_noise_variance, ['cv', 'train_full', 'chen', 'coach420', 'holo4k', 'sc6k']

module load anaconda3
conda activate # source /opt/packages/anaconda3/etc/profile.d/conda.sh
module load cuda/10.2
conda activate ../../pytorch_env
torchrun train.py 0.02 holo4k


