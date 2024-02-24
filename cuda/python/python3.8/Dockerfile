FROM ghcr.io/neuralmagic/base-cuda11.1:latest

RUN set -Eeuxo \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       wget python3.8 python3.8-venv python3-pip\
       libreadline-gplv2-dev libncursesw5-dev \
       libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

HEALTHCHECK CMD python3.8 --version
HEALTHCHECK CMD python3.8 -m pip --help
CMD bash