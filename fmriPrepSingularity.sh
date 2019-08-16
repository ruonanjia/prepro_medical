#!/bin/bash
#SBATCH --partition=general
#SBATCH --job-name=2658
#SBATCH --ntasks=1 --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=8000
#SBATCH --time 20:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ruonan.jia@yale.edu


echo "Running script"

singularity run --cleanenv /project/ysm/levy_ifat/fmriPrep/fmriprep-latest.simg \
/home/rj299/scratch60/mdm_prepro/fmriprep_input /home/rj299/scratch60/mdm_prepro/fmriprep_output \
participant \
--skip_bids_validation \
--fs-license-file /home/rj299/freesurfer_license/licenseFreeSurfer.txt \
-w /home/rj299/scratch60/work \
--nthreads 12 \
--participant_label { 2658 }




