#!/bin/bash

if [ $(sudo systemctl show -p FragmentPath docker.socket | wc -l) -qt 0 ]
then
  if [ $(sudo auditctl -l | grep docker.socket | wc -l) -eq 0 ]
  then
    exit 1
  fi
fi