#!/bin/bash
docker run -d -p 90:80  --log-driver syslog --log-opt syslog-address=tcp://localhost:514 --log-opt tag="nginx" --name nginx nginx