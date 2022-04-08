#!/bin/bash

if [ $(grep -ir ssl_stapling /etc/nginx | wc -l) -eq 0 ]
then
  exit 1
fi