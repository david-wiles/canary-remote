#!/bin/bash

if ! command -v auditctl &> /dev/null
then
  sudo apt-get update
  sudo apt-get install -y auditd
fi

sudo echo "-w /usr/lib/systemd/system/docker.service -k docker" | sudo tee -a /etc/audit/rules.d/audit.rules > /dev/null
sudo service auditd restart
