#!/bin/bash
cd /tmp
\cp  /home/ec2-user/app/init_data/create.sql /tmp/create.sql
chmod 777 /tmp/create.sql
sudo -u postgres psql -U postgres -a -f /tmp/create.sql
export DATABASE_PASSWORD=$(cat /dev/urandom | LC_ALL=C tr -dc '[a-zA-Z0-9]' | head -c 20)
sudo sed -i "s/REPLACE/$DATABASE_PASSWORD/g" /home/ec2-user/app/init_data/passwd.sql
\cp /home/ec2-user/app/init_data/passwd.sql /tmp/passwd.sql
chmod 777 /tmp/passwd.sql
sudo -u postgres psql -U postgres -a -f /tmp/passwd.sql
sudo sed -i "s/REPLACE/$DATABASE_PASSWORD/g" /home/ec2-user/app/scripts/start_script.sh
sudo sed -i "s/REPLACE/$DATABASE_PASSWORD/g" /home/ec2-user/app/server.js
sudo sed -i "s/peer/trust/g" /var/lib/pgsql/data/pg_hba.conf
sudo sed -i "s/ident/trust/g" /var/lib/pgsql/data/pg_hba.conf
sudo systemctl restart postgresql