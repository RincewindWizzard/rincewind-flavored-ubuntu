FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    jq \
    vim \
    git \
    python3 \
    python3-poetry \
    && rm -rf /var/lib/apt/lists/*

ADD .bashrc /root/.bashrc

CMD ["bash"]