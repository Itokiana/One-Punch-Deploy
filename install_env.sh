#!/bin/bash
#
#   Author: Itokiana
#   
#   This setup is from https://gorails.com/setup/ubuntu/20.04
#   Copyright 2020
#
#
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