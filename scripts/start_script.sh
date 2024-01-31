#!/bin/bash
cd /home/ec2-user/app/
forever server.js &
systemctl stop httpd
systemctl start httpd