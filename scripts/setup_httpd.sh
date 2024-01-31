#!/bin/bash

# Thanks aws for the httpd config! I did not want to mess with that
# TODO: Cert bot stuff.
sudo npm install forever@4.0.0 -g
sudo dnf install -y certbot
\sudo cp /home/ec2-user/app/scripts/welcome.conf /etc/httpd/conf.d/welcome.conf
\sudo cp /home/ec2-user/app/scripts/ssl.conf /etc/httpd/conf.d/ssl.conf
sudo systemctl stop httpd
sudo certbot certonly -d resume.tekpossible.com --standalone -m grifkies@protonmail.com --agree-tos -n
sudo systemctl start httpd