#!/bin/bash

user_service='root'
path_server_launcher=`pwd`

nginx_conf='
server {
\n\t  listen 80;
\n\t  listen [::]:80;
\n
\n\t  server_name _;
\n\t  location / {
\n\t\t    proxy_set_header Host $host;
\n\t\t    proxy_set_header X-Real-IP $remote_addr;
\n\t\t    proxy_pass http://localhost:3000;
\n\t  }

\n\t  # Allow uploads up to 100MB in size
\n\t  client_max_body_size 100m;
\n
\n}
'

service_conf="
[Unit]
\nDescription=Service to launch rails server
\nAfter=network.target
\nStartLimitIntervalSec=0
\n[Service]
\nType=simple
\nRestart=always
\nRestartSec=1
\nUser=$user_service
\nExecStart=/bin/bash $path_server_launcher/server_launcher.sh
\n
\n[Install]
\nWantedBy=multi-user.target
"

# read -p "Version de Node JS: " -n 2 node_version
# echo -e "\n"
# read -p "Version de Ruby: " ruby_version
# echo -e "\n"

# echo -e "NodeJS: $node_version"
# echo -e "Ruby: $ruby_version"

read -p "Preciser le repository github: " repo_github
echo -e "\n"
read -p "Preciser la version de Node JS: " -n 2 node_version
echo -e "\n"
read -p "Preciser la version de Ruby: " ruby_version
read -p "Preciser la version de Rails: " rails_version


# echo "chemin $path_server_launcher"
echo -e $nginx_conf
# echo -e $service_conf