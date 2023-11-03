#!/bin/bash
IMG="debian-bionic"
wget -O rootfs.tar.xz https://raw.githubusercontent.com/debuerreotype/docker-debian-artifacts/dist-amd64/stable/rootfs.tar.xz && \
    docker build -t "$IMG" . && \
    rm -f rootfs.tar.xz


