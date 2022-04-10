#!/bin/bash


sudo echo 'tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime 0 0' | sudo tee -a /etc/fstab > /dev/null
sudo mount /tmp