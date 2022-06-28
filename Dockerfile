FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    jq \
    vim \
    git \
    python3 \
    python3-poetry \
    && rm -rf /var/lib/apt/lists/*

ENV PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
ADD .bashrc /root/.bashrc

CMD ["bash"]