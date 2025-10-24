FROM ghcr.io/quarto-dev/quarto-full:1.8.25

# get and update apt tool for installing in Ubuntu (OS used in quarto image)
RUN apt-get update && apt-get install -y wget

# Download an install miniconda: inspired by https://www.anaconda.com/docs/getting-started/miniconda/install#linux-2
ENV CONDA_DIR=/home/miniconda3
RUN mkdir -p $CONDA_DIR && \
    wget https://repo.anaconda.com/miniconda/Miniconda3-py313_25.7.0-2-Linux-x86_64.sh \
    -O $CONDA_DIR/miniconda.sh && \
    bash $CONDA_DIR/miniconda.sh -b -u -p $CONDA_DIR && \
    rm $CONDA_DIR/miniconda.sh 

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH

# # Initalise conda: not good
# RUN conda init

# Copy environment.yml inside of build process of docker
COPY environment.yml /home/environment.yml

# Accept all terms of services, install a specific environment and activate it by default  
ARG ENV_NAME=la_interactions_quarto
RUN conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main && \ 
    conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r && \
    # conda init && \
    conda env create -f /home/environment.yml -n $ENV_NAME

# # set made environment as default 
# ENV PATH=$CONDA_DIR/envs/${ENV_NAME}/bin:$PATH
# auto activate it when you open a bash script! use source instead of conda
# set .bashrc in root as this is default workingdir!
RUN echo "source activate ${ENV_NAME}" >> /root/.bashrc

# run quarto check to see if it recognizes python
RUN quarto check 
