#!/bin/bash
#
#   Author: Itokiana
#   
#   Copyright 2020
#
#
# sudo su - postgres
# createuser --pwprompt $user_postgres
# createdb -O $user_postgres $database_postgres
# exit

echo "
xkkxxkkxxkkkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxdddddddddddddddd
kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkxxkkxxkkkxxxxxxxxxxxxxxxxxxxxxxxxxxdddddddxxx
kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkxxxxxxxxxxxxxxxxxxxx
kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkxxxxxxxxxxxxxxx
kkkkkkkkkkkkkkkkkkkkkkkkkkkkOkOOOOkOOOOOOkkkkkkkkkkkkkkkkkkkkkxxxxxxxxxxxxxx
kkkkkkkkkkkkkkkkkkkkkkOkOOOOOOOOOOOOOOOOOOOOOOOOkkkkkkkkkkkkkkxxxxxxxxxxxxxx
kkkkkkkkkkkkkkkkkkkOOOOOOOOOOOOOOOOOkkxoxOOOOOOOOOOkkkkkkkkkkkkxxxxxxxxxxxxx
kkkkkkkkkkkkkkkkkOOOOOOOOOOOOOOOxdc;cc' .cldOOOOOOOOOOOkkkkkkkkkkkxxxxxxxxxx
kkkkkkkkkkkkkkkOOOOOOOOOOOOOOOkl,..        .,cdxOOOOOOOOOOkkkkkkkkkxxxxxxxxx
kkkkkkkkkkkkkkOOOOOOOOOOOOOkxl...            ..lOOOOOOOOOOOkkkkkkkkkkxxxxxxx
kkkkkkkkkkkkkkkOOOOOOOO00Oo...';cloooc:,,,..   ,,dOOOOOOOOOOOkkkkkkkkkkxxxxx
kkkkkkkkkkkkkkOOOOOOO000Oo..:odddxxxxxxxdddoc.   :okOOOOOOOOOOOkkkkkkkkkkkkk
kkkkOOOOOOOOOOOOOOO00000k,;looddxxxxxxxxxxxddl:. .;O00OOOOOOOOOkkkkkkkkkkkkk
kkkkOOOOOOOOOOOOO0000000:'clllllodxxxxxxxxxdoolc'.c000OOOOOOOOOOOkkkkkkkkkkk
kkkOOOOOOOOOOOO00000000l.;c;.....':oxxxxdollllllc'k000000OOOOOOOOOOkkkkkkkkk
OOOOOOOOOOOOOO00000000O.:l::cllc:,;codlc;'.. ..::.d0000000OOOOOOOOOOOkkkkkkk
OOOOOOOOOOOOOO00000000o,ll:,'''.';:ldxc;,;clc;..;'c0000000OOOOOOOOOOOOOkkkkk
OOOOOOOOOOOOOOO0000000;:oolc:;:cloddxxo::,',,;;;:;c00000000OOOOOOOOOOOOOOkkk
OOOOOOOOOOOOOOO000000k'loodddxxxxddxxxolllc;'.';c:o00000000OOOOOOOOOOOOOOkkk
OOOOOOOOOOOOOOOO0000l:clooddddddl:codollodddollll;k000000000OOOOOOOOOOOOOOOk
OOOOOOOOOOOOOOO00000ol:llooooodoc:;;,....cddddolll0000000OOOOOOOOOOOOOOOOOOk
OOOOOOOOOOOOOO000000doclllcllddxxxxxdxoc:loolollc:k00000OOOOOOOOOOOOOOOOOOkk
OOOOOOOOOOOOOOO00000docllcc:,,';,,,;;;,:clllc::ccl0000000OOOOOOOOOOOOOOOOkkk
OOOOOOOOOOOOOO000000Oxolcccclc:odxkkxdl,..';::clok0000000OOOOOOOOOOOOOOOOOkk
OOOOOOOOOOOOOOOO000Okolc:::coooollodoc:;;;::::cod000000OOOOOOOOOOOOOOOOOOkkk
OkOOOOOOOOOOOOOOOO0Oklccc::ccllllc:;;;:::::,';dO0000OOOOOOOOOOOOOOkkkkkkkkkk
OOOOOOOOOOOOOOOOOO0Okolcc::clloooolllcc:;;'',:xO000OOOOOOOOOkkkOOkkkkkkkkkkk
OOOOOOOOOOOOOOOOOOOOOxdoc;,;;:ccllllllcc:,,;cdk000OOOOOOOOOOOkkkkkkkkkkkkkkk
OOOOOOOOOOOOOOOOOOOOOOkdlc;....'',,,,''''';lxkO00OOOOOOOOOOkkkkkkkkkkkkkxkxk
OOOOOOOOOOOOOOOOOO000Okolol:'....      .':coO000OOOOOOOOOOkkkkkkkkkkkkkkkkkk
OOOOOOOOOOOOOOOOO00000xlooool::;,'...',clllo0000OOOOOOOOOOOOkkkkkkkkkkkkkxxx
OOOOOOOOOOOOOOOOOkkdcclooooddoodddoolllooollloxkkOOOOOOOOOOOOkkkkkkkkkkkkkxx
OOOOOOkkxdolllccccc:,coodoodddddxxddooooddol;.:c:,,:oxkOOOOOOOOOkkkkkkkkkkkk
xdolcc::,''.,:cllcc:,lodddddxxdddddddddddddo:.::c:,''.':ldxxkkOOOOkkkkkkkkkk
cc,,:;''..,:cllll::;;cooooodxxxxxxxxxddddddol';;;:::;,...,;:ccloodxxkkkkkkkk
c,',cc,..':cclcc::;;;;cdddxxxxxxxxddxkkkxxxxl,;;,';:;;;,..',:c::ccccldkkkkkk
:,.,:c:'.;::::;:c::;:;;:dxxxxxxdddxxxkkkkkxc;;;;''';::::,...;;:::::c:ccdkkkk
:,.,ccc,,,:c;,;::::,;::;;cdxxxxxxxxxkkkkxl;;;:,''',;;;;;;,,..';;;;,;::::lkOO
c,.':cc;;,,;;,,;ccc:,,::;;;cdxxxkkkkkkdc:::::,','';;::;,;:,;'..';;,,;;:;;lkO
lc,'ccc:,.;c:;',:::c;,,;:::;;clddxddo:;::cc:,',,';::c:,',;;;,'..;;,',;;:;:oO
lc;';:,,c,;cc;,,;::::;'';:cc::;;;;;;;;:cccc;.''';:::c:'',,,;::'.':,',,;:;;:d
:l:,'';,:,,cc;;;;::::;,',;:cclllccccccccc:,'.',;:::::;',;:;,;:,.,;,'.';::;;:
;ll:,.;,:;'c:;:::::c::;,,,,;::cclcclllc::,'..,;::;:::;',;;::;,,..;;..',;;;;;
;clc;..':;'::;ccc::::::;;,,:;:::cccccc:;,..',;;::::c:;',;;:;;;'.',;'.',,;::;
':ll;'.'c;,c:cc:cc::::;;;;;;;;::::ccc;;,'.',;::;::c::;,,,;;;;:,..,;;'';;:::;
',lc:;..c,,ccc:cc::cc:;;,,;;::::cc:::;,'.';::;::cc:cc:,,,;,,,;;..;,,'';:;;;:
,.:cl;..:::cccccc:::c::::::::::c::c:;,..,;:;:c:ccc:cc:;,,,,,,::..,;,'';::;:;
:;'cl;..:::cccc:::;c::;::c::::ccccc;,'.,;::::ccccc:cc;;,,,;,,;;..';:,';;;;;;
c;,;c;..'c:ccc:::::::::::c:c:::ccc:;'.';::::cccccc::::;,,,,,,;;..,::;',;;;;,
c;.':;. .;:::::::::;;;;;::ccc:cccc:,.',:;:c::cc:::::;;,'',,,;:;..,;:,'',;;;,
c:..;;. .,:;;;;;;;;;;::::c:c:cccc:;'',;;;:::cccccc:::;,'',,,,:,..';:;,',;;;;
"

read -p "Chemin absolu du projet: " project_path
read -p "Secret key base (using 'rails secret' in project): " secret_key_base
echo -e "\n"
read -p "Donnez le nom d'utilisateur pour la base de donnees PostgreSQL: " user_postgres
read -p "Donnez le mot de passe pour la base de donnees PostgreSQL: " password_postgres
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
\ncd $project_path && SECRET_KEY_BASE=$secret_key_base DATABASE_URL='postgres://$user_postgres:$password_postgres@localhost/$database_postgres' RAILS_ENV=production /$user_service/.rbenv/shims/rails s
\n
"

cd $project_path && bundle install

sudo apt-get install -y nginx-extras
echo -e $nginx_conf > /etc/nginx/sites-enabled/default
sudo service nginx restart

mkdir $current_installation_path/bin
touch $current_installation_path/bin/server_launcher.sh
sudo chmod +x $current_installation_path/bin/server_launcher.sh
echo -e $rails_server_launcher > $current_installation_path/bin/server_launcher.sh
sudo chmod +x $current_installation_path/bin/*.sh

echo -e $service_conf > /etc/systemd/system/rails_server.service

cd $project_path && SECRET_KEY_BASE=$secret_key_base DATABASE_URL='postgres://$user_postgres:$password_postgres@localhost/$database_postgres' RAILS_ENV=production /$user_service/.rbenv/shims/rails assets:precompile db:migrate

sudo systemctl start rails_server.service
sudo systemctl enable rails_server.service


alias_cli="
\nalias rails-console=\"/bin/bash $current_installation_path/bin/rails_console.sh\"
\nalias db-migrate=\"/bin/bash $current_installation_path/bin/rails_db_migrate.sh\"
\nalias rails-server-start=\"/bin/bash $current_installation_path/bin/rails_server_start.sh\"
\nalias rails-server-stop=\"/bin/bash $current_installation_path/bin/rails_server_stop.sh\"
\nalias rails-server-status=\"/bin/bash $current_installation_path/bin/rails_server_status.sh\"
\nalias rails-log-renew=\"/bin/bash $current_installation_path/bin/renew_log.sh\"
\nalias rails-assets-precompile=\"/bin/bash $current_installation_path/bin/rails_assets_precompile.sh\"
\nalias rails-view-log=\"/bin/bash $current_installation_path/bin/rails_log.sh\"
\nalias MAJ-project=\"/bin/bash $current_installation_path/bin/MAJ.sh\"
"
echo -e $alias_cli >> $HOME/.bashrc

rails_console="
#!/bin/bash
\ncd $project_path && SECRET_KEY_BASE=$secret_key_base DATABASE_URL='postgres://$user_postgres:$password_postgres@localhost/$database_postgres' RAILS_ENV=production /$user_service/.rbenv/shims/rails c
"
rails_db_migrate="
#!/bin/bash
\ncd $project_path && SECRET_KEY_BASE=$secret_key_base DATABASE_URL='postgres://$user_postgres:$password_postgres@localhost/$database_postgres' RAILS_ENV=production /$user_service/.rbenv/shims/rails db:migrate
\nsudo service rails_server start
"
rails_server_start="
#!/bin/bash
\nsudo service rails_server start
"
rails_server_stop="
#!/bin/bash
\nsudo service rails_server stop
"
rails_server_status="
#!/bin/bash
\nsudo service rails_server status
"
renew_log="
#!/bin/bash
\nrm $project_path/log/production.log && touch $project_path/log/production.log 
\nsudo service rails_server restart
"
rails_assets_precompile="
#!/bin/bash
\ncd $project_path && SECRET_KEY_BASE=$secret_key_base DATABASE_URL='postgres://$user_postgres:$password_postgres@localhost/$database_postgres' RAILS_ENV=production /$user_service/.rbenv/shims/rails assets:precompile
\nsudo service rails_server restart
"
rails_log="
#!/bin/bash
\nnano /root/OIAM/log/production.log
"
MAJ="
#!/bin/bash
\ncd $project_path && git pull
\nsudo service rails_server restart
"

touch $current_installation_path/bin/rails_console.sh
touch $current_installation_path/bin/rails_db_migrate.sh
touch $current_installation_path/bin/rails_server_start.sh
touch $current_installation_path/bin/rails_server_stop.sh
touch $current_installation_path/bin/rails_server_status.sh
touch $current_installation_path/bin/renew_log.sh
touch $current_installation_path/bin/rails_assets_precompile.sh
touch $current_installation_path/bin/rails_log.sh
touch $current_installation_path/bin/MAJ.sh

sudo chmod +x $current_installation_path/bin/*.sh

echo '#####################################################################################'
echo 'CONFIG OK'
echo 'RAILS ALREADY RUNNED'
echo '#####################################################################################'
