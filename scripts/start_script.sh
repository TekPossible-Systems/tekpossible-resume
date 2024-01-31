#!/bin/bash

systemctl reset-failed
systemd-run --unit=resume-node /home/ec2-user/app/scripts/exec_node.sh
systemctl stop httpd
systemctl start httpd