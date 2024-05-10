#!/usr/bin/bash
 
# Add Enterprise Linux Repository
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
 
# Install xrdp
yum -y install xrdp
 
# Start xrdp and enable at startup
systemctl start xrdp.service
systemctl enable xrdp.service
 
# allow port 3389 through firewall and reload rules
firewall-cmd --add-port=3389/tcp --permanent
firewall-cmd --reload
