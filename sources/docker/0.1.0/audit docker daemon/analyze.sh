#!/bin/bash

if ! command -v auditctl &> /dev/null
then
  exit 1
fi


if [ $(sudo auditctl -l | grep /var/lib/docker | wc -l) -eq 0 ]
then
  exit 1
fi