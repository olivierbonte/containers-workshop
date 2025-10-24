# note: first run apptainer_1.sh to download the different .sif files
# which I didn't not add to the repo 
apptainer exec  fastqc_0.11.9.sif fastqc -h

# execute after downloading data with `downl-data.sh`
apptainer exec fastqc_0.11.9.sif fastqc ../data/WT_lib1_R1.fq.gz

# on multiple files! no weird bash -c "" like for docker
apptainer exec fastqc_0.11.9.sif fastqc ../data/WT*.fq.gz
# after .sif is interpreted as linux bash entries!

#Try mounting the VO
# This works: makes link to /shared_data (is in root in docker)
# if you write something to /shared_data in container, this wil be there in $VSC_DATA_VO_USER
apptainer shell -B $VSC_DATA_VO_USER:/shared_data  hello-world.sif
# this does not 
apptainer shell -B $VSC_DATA_VO_USER:$VSC_SCRATCH/2025_container_workshop/containers-workshop/own_solutions/VO_DATA hello-world.sif