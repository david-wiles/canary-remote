#!/bin/bash

if [ $(sudo ausearch -k docker | grep exec | grep user | wc -l) -gt 0 ]
then
  exit 1
fi