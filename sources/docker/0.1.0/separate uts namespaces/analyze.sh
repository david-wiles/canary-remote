#!/bin/bash

if [ $(sudo docker ps --quiet --all | xargs sudo docker inspect --format '{{ .HostConfig.UTSMode }}' | grep 'host' | wc -l) -ne 0 ]
then
  exit 1
fi