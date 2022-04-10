#!/bin/bash

if [ $(sudo ip6tables -L | grep -E 'Chain (INPUT|FORWARD|OUTPUT) \(policy ACCEPT\)' | wc -l) -gt 0 ]
then
  exit 1
fi