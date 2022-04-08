#!/bin/bash

sudo groupadd nginx
sudo adduser --system --ingroup nginx --home /var/cache/nginx --shell /sbin/nologin nginx
sudo sed -i 's/^user[^;]*;$/user nginx;/' /etc/nginx/nginx.conf
