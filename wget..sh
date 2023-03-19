#!/bin/bash
echo -e "\e[92m...\e[39m"
echo -e "\e[92mDownload and Installing mailx cyrus-sasl cyrus-sasl-lib cyrus-sasl-plain postfix  ...\e[39m"
echo -e "\e[92m...\e[39m"

wget https://github.com/fox4ua/mail_srv/archive/master.zip
apt-get install unzip -y
unzip master.zip
cd /root/mail_srv-main/
chmod +x init.sh
./init.sh
