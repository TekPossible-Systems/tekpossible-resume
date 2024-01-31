#!/bin/bash
cd /home/ec2-user/app/
systemctl reset-failed
systemd-run --unit=resume-node forever server.js
systemctl stop httpd
systemctl start httpd