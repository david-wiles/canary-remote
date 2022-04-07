#!/bin/bash

sudo echo "-w /usr/lib/systemd/system/docker.service -k docker" | sudo tee -a /etc/audit/rules.d/audit.rules > /dev/null
sudo service auditd restart
