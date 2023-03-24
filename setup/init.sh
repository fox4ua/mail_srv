#!/bin/bash
echo -e "\e[92m...\e[39m"
echo -e "\e[92mInstalling Mail Servert ...\e[39m"
echo -e "\e[92m...\e[39m"
chmod +x code/*.sh
source data.sh
./code/10-init.sh
./code/20-mysql.sh
./code/30-php.sh
./code/40-apache.sh
./code/50-phpMyAdmin.sh
