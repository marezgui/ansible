FROM ubuntu:latest AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    sudo \
    software-properties-common \
    curl \
    vim \
    git \ 
    build-essential \
&&  apt-add-repository -y ppa:ansible/ansible \
&&  apt-get update && apt-get install -y \
    curl \
    git \
    ansible \
    build-essential \
&&  apt-get clean autoclean \
&&  apt-get autoremove --yes

FROM base AS docker
ARG TAGS
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker
WORKDIR /home/docker

FROM docker
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS mpx.yml"]
