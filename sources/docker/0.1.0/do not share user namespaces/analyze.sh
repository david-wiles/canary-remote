#!/bin/bash

if [ $(sudo docker ps --quiet --all | xargs sudo docker inspect --format '{{ .Id }}: UsernsMode={{ .HostConfig.UsernsMode }}') -eq "host" ]
then
  exit 1
fi