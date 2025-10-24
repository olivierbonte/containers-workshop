# make sure apptainer is installed to do this! 
# Is the case by default on UGent HPC tier 2 

# Pull an apptainer image for python from Docker hub 
apptainer pull python_3.9.6.sif docker://python:3.9.6-slim-buster

# Pull another image from galaxy depot
# For syntax: I think the name flag is optional? it also works without
apptainer pull --name fastqc_0.11.9.sif https://depot.galaxyproject.org/singularity/fastqc:0.11.9--0