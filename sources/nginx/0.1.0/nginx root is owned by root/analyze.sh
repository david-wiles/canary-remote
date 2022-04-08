#!/bin/bash

if [ $(sudo passwd -S nginx | awk '{print $7}') -ne "root root" ]
then
  exit 1
fi