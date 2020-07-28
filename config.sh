#!/bin/bash

# sudo su - postgres
# createuser --pwprompt $user_postgres
# createdb -O $user_postgres $database_postgres
# exit

read -p "Chemin absolu du projet: " project_path
read -p "Secret key base (using 'rails secret' in project): " secret_key_base
echo -e "\n"
read -p "Donnez le nom d'utilisateur pour la base de donnees PostgreSQL: " user_postgres
read -p "Donnez le mot de passe pour la base de donnees PostgreSQL: " -s password_postgres
read -p "Donnez le nom pour la base de donnees PostgreSQL: " database_postgres
echo -e "\n"

user_service=`whoami`
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
\nExecStart=/bin/bash $current_installation_path/bin/server_launcher.sh
\n
\n[Install]
\nWantedBy=multi-user.target
"

rails_server_launcher="
#!/bin/bash
\n
\ncd $project_path && SECRET_KEY_BASE=$secret_key_base DATABASE_URL='postgres://$user_postgres:$password_postgres@localhost/$database_postgres' RAILS_ENV=production /$user_service/.rbenv/shims/rails assets:precompile db:migrate s
\n
"

cd $project_path && bundle install

sudo apt-get install -y nginx-extras
echo -e $nginx_conf > /etc/nginx/site-enabled/default
sudo service nginx restart

echo -e $rails_server_launcher > $current_installation_path/bin/server_launcher.sh
sudo chmod +x $current_installation_path/bin/*.sh

echo -e $service_conf > /etc/systemd/system/rails_server.service
sudo service rails_server start
sudo service rails_server enable


echo '#####################################################################################'
echo 'CONFIG OK'
echo 'RAILS ALREADY RUNNED'
echo '#####################################################################################'
