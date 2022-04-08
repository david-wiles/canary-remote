#!/bin/bash

if [ $(sudo passwd -S nginx | awk '{print $7}') -ne -1 ]
then
  exit 1
fi