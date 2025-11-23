FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    wget \
    git \
    iproute2 \
    net-tools \
    procps \
    lsb-release \
    vim \
    less \
    unzip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash devops && echo "devops:devops" | chpasswd && adduser devops sudo

WORKDIR /home/devops

COPY demo-commands.sh /usr/local/bin/demo-commands.sh
RUN chmod +x /usr/local/bin/demo-commands.sh

USER devops

ENTRYPOINT ["/bin/bash"]
