FROM python:3.8-slim as compile-image

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    build-essential \
    git \
    gcc curl 
CMD bash