#!/bin/bash

if [ $(virsh pool-list --type disk | tail -n +3 | grep active | wc -l) -gt 0 ]
then
  exit 1
fi
