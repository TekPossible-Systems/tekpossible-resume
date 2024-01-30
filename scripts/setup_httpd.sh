#!/bin/bash

# Thanks aws for the httpd config! I did not want to mess with that
# TODO: Cert bot stuff.
sudo cat <<EOT >> /etc/httpd/conf/httpd.conf
LoadModule proxy_module modules/mod_proxy.so
LoadModule proxy_http_module modules/mod_proxy_http.so

ProxyRequests Off
ProxyPass / http://localhost:8080/
ProxyPassReverse / http://localhost:8080/

<Location "/">
  Order allow,deny
  Allow from all
</Location>
EOT