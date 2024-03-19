ARG CUDA_VERSION=12.1.0

FROM ghcr.io/neuralmagic/base-cuda${CUDA_VERSION}:latest

RUN set -Eeuxo \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       wget python3.8 python3.8-venv python3-pip python3-wheel\
       libreadline-gplv2-dev libncursesw5-dev \
       libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

HEALTHCHECK CMD python3.8 --version && CMD python3.8 -m pip --help
CMD bash