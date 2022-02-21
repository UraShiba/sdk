FROM ubuntu:20.04

USER root
# ユーザーを作成
ARG DOCKER_UID=1000
ARG DOCKER_USER=server
ARG DOCKER_PASSWORD=server
ENV HOME /home/${DOCKER_USER}
RUN useradd -m --uid ${DOCKER_UID} --groups sudo ${DOCKER_USER} \
  && echo ${DOCKER_USER}:${DOCKER_PASSWORD} | chpasswd
ENV SHELL /bin/bash
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y vim git curl wget apt-utils unzip sudo libssl-dev gnupg
RUN apt-get install -y build-essential libpq-dev
RUN apt-get install -y clang cmake ninja-build pkg-config libgtk-3-dev libblkid-dev liblzma-dev 

# Rust install
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    $HOME/.cargo/bin/cargo install cargo-make

RUN $HOME/.cargo/bin/cargo install diesel_cli --no-default-features --features postgres

WORKDIR /usr