#!/bin/bash

passwd_output=$(sudo passwd -S nginx)

if [ $? -ne 0 ]
then
  exit 1
fi

if [ $($passwd_output | awk '{print $7}') -ne "root root" ]
then
  exit 1
fi