# docker run --detach -u 1000 -w /scratch -v ../data:/scratch biocontainers/fastqc:v0.11.9_cv7 sh -c fastqc WT*.fq.gz
docker run --detach -u 1000:1000 -w /scratch -v ../data:/scratch biocontainers/fastqc:v0.11.9_cv7 bash -c 'fastqc WT*.fq.gz'
# the bash -c (bash command) is nodig zodat de volledig fastqc ... in bash wordt geplakt en
# er en de wildcard wordt dan wel herkend!
# bash -c means "run bash and execute the command that follows as a string".