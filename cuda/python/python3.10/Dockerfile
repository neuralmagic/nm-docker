ARG CUDA_VERSION=11.3.1

FROM ghcr.io/neuralmagic/base-cuda${CUDA_VERSION}:latest

RUN set -Eeuxo \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       wget python3.10 python3.10-venv python3-pip python3-wheel\
       libreadline-gplv2-dev libncursesw5-dev \
       libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

HEALTHCHECK CMD python3.10 --version && CMD python3.10 -m pip --help
CMD bash