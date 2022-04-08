#!/bin/bash

if [ $(grep -ir 'ssl_session_tickets on' /etc/nginx | wc -l) -ne 0 ]
then
  exit 1
fi