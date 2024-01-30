#!/bin/bash

export DATABASE_PASSWORD='REPLACE'
node /home/ec2-user/app/server.js
systemctl start httpd