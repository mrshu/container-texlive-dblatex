FROM ubuntu:bionic

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install dblatex texlive-generic-recommended texlive-fonts-extra xzdec -y \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /documents

WORKDIR /documents
