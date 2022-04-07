#!/bin/bash

if [ $( sudo docker ps --quiet --all | xargs sudo docker inspect --format '{{ .HostConfig.IpcMode }}' | grep 'host' | wc -l) -ne 0 ]
then
  exit 1
fi