#!/bin/bash

sudo echo "audit_level=2" | sudo tee -a /etc/libvirt/libvirtd.conf > /dev/null
sudo systemctl restart libvirtd
