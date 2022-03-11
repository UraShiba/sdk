FROM ubuntu:20.04

USER root
ENV SHELL /bin/bash
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y vim git curl wget apt-utils unzip sudo libssl-dev gnupg
RUN apt-get install -y build-essential libpq-dev
RUN apt-get install -y clang cmake ninja-build pkg-config libgtk-3-dev libblkid-dev liblzma-dev 

ARG DOCKER_UID=1001
ARG DOCKER_USER=developer
ARG DOCKER_PASSWORD=developer
RUN useradd -m --uid ${DOCKER_UID} --groups sudo ${DOCKER_USER} \
  && echo ${DOCKER_USER}:${DOCKER_PASSWORD} | chpasswd

ENV HOME /home/${DOCKER_USER}

USER ${DOCKER_USER}
# Rust install
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    $HOME/.cargo/bin/cargo install cargo-make

RUN $HOME/.cargo/bin/cargo install diesel_cli --no-default-features --features postgres
RUN mkdir -p $HOME/work
USER root
EXPOSE 5050
WORKDIR $HOME