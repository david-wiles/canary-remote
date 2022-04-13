#!/bin/bash

if [ $(grep "user nginx;" /etc/nginx/nginx.conf | wc -l) -eq 0 ]
then
  exit 1
fi