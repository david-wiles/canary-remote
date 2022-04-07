#!/bin/bash

if [ $(sudo docker ps --quiet --all | xargs sudo docker inspect --format '{{ .Id }}: SecurityOpt={{ .HostConfig.SecurityOpt }}' | grep "no-new-privileges" | wc -l) -eq 0 ]
then
  exit 1
fi