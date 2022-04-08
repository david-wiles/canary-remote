#!/bin/bash

if [ $(grep -ir large_client_header_buffers /etc/nginx/ | wc -l) -eq 0 ]
then
  exit 1
fi