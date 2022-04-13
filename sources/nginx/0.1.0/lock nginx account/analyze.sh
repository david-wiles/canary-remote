#!/bin/bash

lock=$(sudo passwd -S nginx | awk '{print $2}')

if [ -z $lock ]
then
  exit 1
fi

if [ $lock != "L" ]
then
  exit 1
fi