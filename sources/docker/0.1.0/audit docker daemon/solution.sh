#!/bin/bash

sudo echo "-w /var/lib/docker -k docker" | sudo tee -a /etc/audit/rules.d/audit.rules > /dev/null
service auditd restart
