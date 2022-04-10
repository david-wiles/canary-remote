#!/bin/bash

sudo apt update

if [ $(sudo apt list --upgradable 2> /dev/null | grep 'upgradable from' | wc -l) -gt 0 ]
then
  exit 1
fi
