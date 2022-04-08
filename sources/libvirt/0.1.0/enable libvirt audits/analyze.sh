#!/bin/bash

if [ $(cat /etc/libvirt/libvirtd.conf | grep '^audit_level' | wc -l) -eq 0 ]
then
  exit 1
fi