#!/bin/bash

export DATABASE_PASSWORD='REPLACE'
systemctl start httpd
node /home/ec2-user/app/server.js
