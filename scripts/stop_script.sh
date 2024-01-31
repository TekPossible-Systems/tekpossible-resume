#!/bin/bash
forever stopall
sudo systemctl stop httpd
systemctl reset-failed