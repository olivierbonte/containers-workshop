# Activity 1.1
docker pull biocontainers/fastqc:v0.11.9_cv7
docker run --name fastqc_temp biocontainers/fastqc:v0.11.9_cv7 fastqc -h
docker rm -f fastqc_temp

# Extra: find information on the container
docker inspect biocontainers/fastqc:v0.11.9_cv7 
docker inspect biocontainers/fastqc:v0.11.9_cv7 | grep "Work"