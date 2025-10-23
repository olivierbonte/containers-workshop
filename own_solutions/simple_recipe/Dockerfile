FROM ubuntu:18.04 
LABEL org.opencontainers.image.authors="olivier.bonte@ugent.be"
WORKDIR /data
RUN apt update && apt -y upgrade 
RUN apt install -y wget && apt update
ENTRYPOINT ["wget", "https://cdn-images-1.medium.com/max/1600/1*_NQN6_YnxS29m8vFzWYlEg.png"]

# To build, navigate inside the folder where this is and type `docker build . --tag simple:v0.1`
# docker run -u 1000:1000 -v .:/data simple:v0.1
# with the command above, you save TO . FROM /data (absolute path) on the container.
# /data gezet als workdir hier (zie lijn 2)
