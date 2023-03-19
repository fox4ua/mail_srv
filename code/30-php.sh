#!/bin/bash
# =================================================
echo -e "\e[92m -========Install PHP ...========- \e[39m"
# =================================================


apt-get install php php-common -y
apt-get install php-zip php-gd php-json php-xml php-mysqli php-curl php-mbstring php-cli php-pdo php-pear php-bcmath -y


 



php5-imap  php5-mcrypt php5-intl


# =================================================
echo -e "\e[94m -========End PHP ...========- \e[39m"