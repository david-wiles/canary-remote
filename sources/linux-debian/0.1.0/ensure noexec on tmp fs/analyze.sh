#!/bin/bash

if [ $(mount | grep -E '\s/tmp\s' | grep -v noexec | wc -l) -eq 0 ]
then
  exit 1
fi