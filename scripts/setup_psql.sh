#!/bin/bash

sudo -u postgres psql -u postgres -a -f /home/ec2-user/init_data/create.sql
export DATABASE_PASSWORD=$(cat /dev/urandom | LC_ALL=C tr -dc '[a-zA-Z0-9]' | head -c 20)
sudo sed -i "s/REPLACE/$DATABASE_PASSWORD/g" > /home/ec2-user/app/init_data/passwd.sql
sudo -u postgres psql -u postgres -a -f /home/ec2-user/init_data/passwd.sql
sudo sed -i "s/REPLACE/$DATABASE_PASSWORD/g" > /home/ec2-user/app/scripts/start_script.sh