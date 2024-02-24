FROM ghcr.io/neuralmagic/base-cuda11.1:latest

RUN set -Eeuxo \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       wget python3-pip\
       libreadline-gplv2-dev libncursesw5-dev \
       libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz  \
    && tar xzf Python-3.10.0.tgz \
    && rm Python-3.10.0.tgz \
    && cd Python-3.10.0 \
    && ./configure --enable-optimizations \
    && make altinstall \
    && cd ../ && rm -rf Python-3.10.0

HEALTHCHECK CMD python3.10 --version
HEALTHCHECK CMD python3.10 -m pip --help
CMD bash