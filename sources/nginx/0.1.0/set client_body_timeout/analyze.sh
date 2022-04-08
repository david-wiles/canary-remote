#!/bin/bash

if [ $(grep -ir client_body_timeout /etc/nginx | wc -l) -eq 0 ]
then
  exit 1
fi

if [ $(grep -ir client_header_timeout /etc/nginx | wc -l) -eq 0 ]
then
  exit 1
fi