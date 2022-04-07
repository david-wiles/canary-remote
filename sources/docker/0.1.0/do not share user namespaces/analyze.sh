#!/bin/bash

if [ $(docker ps --quiet --all | xargs docker inspect --format '{{ .Id }}: UsernsMode={{ .HostConfig.UsernsMode }}') -eq "host" ]
then
  exit 1
fi