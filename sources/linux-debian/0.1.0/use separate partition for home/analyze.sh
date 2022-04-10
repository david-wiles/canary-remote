#!/bin/bash

if [ $(mount | grep /home | wc -l) -eq 0 ]
then
  exit 1
fi