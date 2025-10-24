# Pull the image only once 
#docker pull jupyter/scipy-notebook:python-3.11.5

# Problem with the joyvan folder 
#docker run -v ../data:/home/joyvan jupyter/scipy-notebook:python-3.11.5 python codereppy_min_batch.py

# Solution: just set to new working directory
docker run --rm -w /data -v ../data:/data jupyter/scipy-notebook:python-3.11.5 python codereppy_min_batch.py