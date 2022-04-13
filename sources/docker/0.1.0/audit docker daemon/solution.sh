#!/bin/bash

if [ -x $(command -v auditctl) ]
then
  sudo apt-get update
  sudo apt-get install -u auditd
fi

sudo echo "-w /var/lib/docker -k docker" | sudo tee -a /etc/audit/rules.d/audit.rules > /dev/null
service auditd restart
