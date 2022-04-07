#!/bin/bash

if [ $(sudo docker ps --quiet --all | xargs sudo docker inspect --format '{{ .Id }}: Volumes={{ .Mounts }}' | grep docker.sock | wc -l) -gt 0 ]
then
  exit 1
fi