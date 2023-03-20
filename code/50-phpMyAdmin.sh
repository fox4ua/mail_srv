#!/bin/bash
# =================================================
echo -e "\e[92m -========Install phpMyAdmin ...========- \e[39m"
# =================================================
mkdir -p /var/lib/phpmyadmin/tmp
chown -R www-data:www-data /var/lib/phpmyadmin
cd /var/www/
wget https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.zip
unzip phpMyAdmin-5.2.1-all-languages.zip
mv phpMyAdmin-5.2.1-all-languages pma
sudo cp /var/www/pma/config.sample.inc.php /var/www/pma/config.inc.php

echo '$CONF["configured"] = '{$RESULT}';' >> /var/www/html/postfixadmin/config.inc.php
echo "$cfg['blowfish_secret'] = '';" >> /var/www/html/pma/config.inc.php
 
 blowfish_secret=$(pwgen -s 32 1)
echo $blowfish_secret