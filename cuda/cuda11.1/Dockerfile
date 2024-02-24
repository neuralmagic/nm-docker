ARG CUDA_VERSION=11.1.1

# Setup the base image & install dependencies
FROM nvidia/cuda:${CUDA_VERSION}-devel-ubuntu18.04

RUN if [ -f /etc/apt/sources.list.d/cuda.list ] ; then rm /etc/apt/sources.list.d/cuda.list ; fi
RUN if [ -f /etc/apt/sources.list.d/nvidia-ml.list ] ; then rm /etc/apt/sources.list.d/nvidia-ml.list ; fi

# Install system requirements
RUN set -Eeuxo \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        software-properties-common \
        git-all \
    && add-apt-repository -y ppa:deadsnakes \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        build-essential libssl-dev libffi-dev \
        ffmpeg libsm6 libxext6 \
        curl 

CMD bash 
