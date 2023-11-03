#!/bin/bash
IMG="unbuntu-bionic"
wget -O ubuntu-base-18.04.5-base-amd64.tar.gz https://cdimage.ubuntu.com/ubuntu-base/releases/18.04/release/ubuntu-base-18.04.5-base-amd64.tar.gz && \
    docker build -t "$IMG" .  && \
    rm -f ubuntu-base-18.04.5-base-amd64.tar.gz


