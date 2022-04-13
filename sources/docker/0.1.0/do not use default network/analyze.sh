#!/bin/bash

if [ $(sudo docker ps --format '{{ .ID }}' | xargs sudo docker inspect --format '{{ .NetworkSettings.Networks }}' | grep bridge | wc -l) -gt 0 ]
then
  exit 1
fi
