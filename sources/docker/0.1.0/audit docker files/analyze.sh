#!/bin/bash

if [ $(sudo auditctl -l | grep /etc/docker | wc -l) -eq 0 ]
then
  exit 1
fi