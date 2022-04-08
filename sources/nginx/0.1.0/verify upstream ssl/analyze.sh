#!/bin/bash

if [ $(grep -ir proxy_pass /etc/nginx | wc -l) -ne 0 ]
then
  if [ $(grep -ir proxy_ssl_certificate /etc/nginx | wc -l) -eq 0 ]
  then
    exit 1
  fi
fi