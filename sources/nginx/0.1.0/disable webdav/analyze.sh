#!/bin/bash

if [ $(nginx -V 2>&1 | grep http_dav_module | wc -l) -gt 0 ]
then
  exit 1
fi