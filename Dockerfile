FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    jq \
    vim \
    git \
    python3 \
    python3-poetry \
    && rm -rf /var/lib/apt/lists/*


CMD ["bash"]