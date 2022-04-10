#!/bin/bash

if [ $(mount | grep -E '\s/tmp\s' | wc -l) -eq 0 ]
then
  exit 1
fi
