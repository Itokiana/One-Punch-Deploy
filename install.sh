#!/bin/bash
read -p "Login hebergeur: " user_service
read -p "Chemin absolu du projet: " project_path
echo -e "\n"
read -p "Preciser le repository github: " repo_github
echo -e "\n"
read -p "Preciser la version de Node JS: " -n 2 node_version
echo -e "\n"
read -p "Preciser la version de Ruby: " ruby_version
read -p "Preciser la version de Rails: " rails_version
read -p "Secret key base (using 'rails secret' in project): " secret_key_base
echo -e "\n"
read -p "Donnez un nom d'utilisateur pour la base de donnees PostgreSQL: " user_postgres
read -p "Donnez un nom pour la base de donnees PostgreSQL: " database_postgres
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

sudo apt install postgresql-12 libpq-dev
sudo su - postgres
createuser --pwprompt deploy
createdb -O deploy myapp
exit

echo -e "\n"
read -p "Veuillez resaisir le mot de passe de l'utilisateur $user_postgres pour la base de donnees $database_postgres: " password_postgres
echo -e "\n"

rails_server_launcher="
#!/bin/bash
\n
\ncd $project_path && SECRET_KEY_BASE=$secret_key_base DATABASE_URL='postgres://$user_postgres:$password_postgres@localhost/$database_postgres' RAILS_ENV=production /$user_service/.rbenv/shims/rails s
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
