#!/bin/bash
systemctl stop httpd
systemctl start httpd
cd /home/ec2-user/app/
forever server.js 