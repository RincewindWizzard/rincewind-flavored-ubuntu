FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    jq \
    && rm -rf /var/lib/apt/lists/*


CMD ["bash"]