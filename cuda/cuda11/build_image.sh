DOCKER_BUILDKIT=1 \
  docker build --build-arg CUDA_VERSION="11.3.1" -t ghcr.io/neuralmagic/base-cuda11.3.1 .
