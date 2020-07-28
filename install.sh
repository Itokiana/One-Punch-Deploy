#!/bin/bash

user_service='root'
current_installation_path=`pwd`


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

read -p "Preciser le repository github: " repo_github
echo -e "\n"
read -p "Preciser la version de Node JS: " -n 2 node_version
echo -e "\n"
read -p "Preciser la version de Ruby: " ruby_version
read -p "Preciser la version de Rails: " rails_version

sudo apt install curl
curl -sL https://deb.nodesource.com/setup_$node_version.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install -y git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

cd && git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install $ruby_version
rbenv global $ruby_version

gem install bundler

gem install rails -v $rails_version

rbenv rehash