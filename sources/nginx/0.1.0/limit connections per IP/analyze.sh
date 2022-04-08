#!/bin/bash

if [ $(grep -ir limit_conn_zone /etc/nginx | wc -l) -eq 0 ]
then
  exit 1
fi

if [ $(grep -ir limit_conn /etc/nginx | wc -l) -eq 0 ]
then
  exit 1
fi