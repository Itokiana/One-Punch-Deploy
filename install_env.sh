#!/bin/bash

echo -e "\n"
read -p "Preciser la version de Node JS (Ex: 12.x): " node_version
echo -e "\n"
read -p "Preciser la version de Ruby (2.7.1): " ruby_version
read -p "Preciser la version de Rails (6.0.2): " rails_version

current_installation_path=`pwd`


sudo apt install curl
curl -sL https://deb.nodesource.com/setup_$node_version.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install -y git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

cd $HOME 
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL &

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL &

rbenv install $ruby_version
rbenv global $ruby_version

gem install bundler

gem install rails -v $rails_version

rbenv rehash

sudo apt install -y postgresql-12 libpq-dev

echo '#####################################################################################'
echo 'ENV INSTALLED'
echo "Node JS: `node -v`"
echo "Yarn: `yarn -v`"
echo "Ruby: `ruby -v`"
echo "Rails: `rails -v`"
echo '#####################################################################################'