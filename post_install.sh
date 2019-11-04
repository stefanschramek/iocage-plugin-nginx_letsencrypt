#!/bin/sh

rehash

sysrc -f /etc/rc.conf nginx_enable="YES"
sysrc -f /etc/rc.conf firewall_enable="YES"
sysrc -f /etc/rc.conf firewall_type="workstation"
sysrc -f /etc/rc.conf firewall_myservices="80/tcp 443/tcp"
sysrc -f /etc/rc.conf firewall_allowservices="any"

sudo service ipfw start
sudo service nginx start
