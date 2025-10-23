# Mount de data folder lokaal naar de /data folder in de container
docker run --rm -v ../data:/data biocontainers/fastqc:v0.11.9_cv7 fastqc WT_lib1_R1.fq.gz
# For me, my data is on the top-level data -> I don't need an extra data c

# 2.3
docker run --rm -it -v ../data:/scratch biocontainers/fastqc:v0.11.9_cv7 
# then type "cd .."
# then type "touch scratch/file1.txt"
# you are root

# define user id: to replace the default 0 user 
docker run --rm -it -u 1000 -v ../data:/scratch biocontainers/fastqc:v0.11.9_cv7 
# now not root
# navigate inside 
# create "touch file3.txt"
# -rw-r--r-- 1 olivier_bonte docker                0 Oct 23 13:54 file3.txt
# this is what we want: we don't want to be root! 
# We don't want people to be able to write with root from container on your own pc (or the HPC)