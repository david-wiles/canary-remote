#!/bin/bash

if [ $(egrep -i '^\s*autoindex\s+' /etc/nginx/nginx.conf | wc -l) -gt 0 ]
then
  exit 1
fi

if [ $(egrep -i '^\s*autoindex\s+' /etc/nginx/conf.d/* | wc -l) -gt 0 ]
then
  exit 1
fi
