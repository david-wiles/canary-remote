#!/bin/bash

if [ $(sudo auditctl -l | grep /var/lib/docker | wc -l) -eq 0 ]
then
  exit 1
fi