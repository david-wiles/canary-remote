#!/bin/bash

for container in $(sudo docker ps --format '{{ .ID }}')
do
  if [ $(sudo docker inspect --format '{{ .NetworkSettings.Networks }}' $container | grep bridge | wc -l) -gt 0 ]
  then
    sudo docker network disconnect bridge $container
  fi
done
