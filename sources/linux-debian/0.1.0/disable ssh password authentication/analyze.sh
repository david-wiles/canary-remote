#!/bin/bash

if [ $(cat /etc/ssh/sshd_config | grep '^PasswordAuthentication no' | wc -l) -eq 0 ]
then
  exit 1
fi