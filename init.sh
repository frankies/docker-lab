#!/bin/bash
sudo add-apt-repository ppa:adiscon/v8-devel && \
  apt-get update && \
  apt-get install rsyslog

# sudo sysctl -w vm.max_map_count=262144
echo "vm.max_map_count=262144" >> /etc/sysctl.conf
sysctl -p