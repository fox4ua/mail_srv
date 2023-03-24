#!/bin/bash
# =================================================
echo -e "\e[92m -========Install Apache ...========- \e[39m"
# =================================================
apt-get install apache2 apache2-utils libapache2-mod-php -y
systemctl reload apache2
# =================================================
echo -e "\e[94m -========End Apache ...========- \e[39m"