FROM python:3.10-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN set -Eeuxo \
    && apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    gcc curl \
    && apt-get clean

HEALTHCHECK CMD python --version && CMD python -m pip --help
CMD bash