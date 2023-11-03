#!/bin/bash
IMG="debian-bionic"
docker run --rm -it -p 80:80 $IMG /bin/bash
