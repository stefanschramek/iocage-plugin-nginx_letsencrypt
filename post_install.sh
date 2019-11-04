#!/bin/sh

rehash

sysrc -f /etc/rc.conf nginx_enable="YES"

sudo service nginx start
