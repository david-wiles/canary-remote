#!/bin/bash

sudo echo "-w /etc/docker -k docker" | sudo tee -a /etc/audit/rules.d/audit.rules > /dev/null
service auditd restart
