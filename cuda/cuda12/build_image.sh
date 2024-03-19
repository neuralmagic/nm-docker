DOCKER_BUILDKIT=1 \
  docker build --build-arg CUDA_VERSION="12.1.0" -t ghcr.io/neuralmagic/base-cuda12.1.0 .

