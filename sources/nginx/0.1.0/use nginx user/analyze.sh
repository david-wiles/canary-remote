#!/bin/bash

if [ $(grep "user[^;]*;" /etc/nginx/nginx.conf | wc -l) -eq 0 ]
then
  exit 1
fi