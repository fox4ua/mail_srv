#!/bin/bash
# =================================================
echo -e "\e[92m -========Install PHP ...========- \e[39m"
# =================================================
apt-get install php php-common -y
apt-get install php-mysql php-mysqli -y
apt-get install php-bz2 php-zip -y
apt-get install php-curl php-gd php-mbstring php-json php-xml php-phpseclib php-cli php-pdo php-pear php-bcmath -y

# =================================================
echo -e "\e[94m -========End PHP ...========- \e[39m"
