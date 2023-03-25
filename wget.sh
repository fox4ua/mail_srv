#!/bin/bash
echo -e "\e[92m...\e[39m"
echo -e "\e[92mDownload ...\e[39m"
echo -e "\e[92m...\e[39m"

wget https://github.com/fox4ua/mail_srv/archive/master.zip
apt-get install unzip -y
unzip master.zip
cd ./mail_srv-main/
chmod +x ./setup/setup.sh
