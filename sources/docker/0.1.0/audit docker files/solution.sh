#!/bin/bash

if ! command -v auditctl &> /dev/null
then
  sudo apt-get update
  sudo apt-get install -y auditd
fi

sudo echo "-w /etc/docker -k docker" | sudo tee -a /etc/audit/rules.d/audit.rules > /dev/null
service auditd restart
