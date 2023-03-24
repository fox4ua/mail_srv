#!/bin/bash
# =================================================
echo -e "\e[92m -========Install phpMyAdmin ...========- \e[39m"
# =================================================
apt install pwgen
mkdir -p /var/lib/phpmyadmin/tmp
chown -R www-data:www-data /var/lib/phpmyadmin
# cd /var/www/
wget https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.zip
unzip phpMyAdmin-5.2.1-all-languages.zip
mv phpMyAdmin-5.2.1-all-languages /var/www/pma
chown -R www-data:www-data /var/www/pma
cp /var/www/pma/config.sample.inc.php /var/www/pma/config.inc.php
blowfish_secret=$(pwgen -s 32 1)
sed -i "s/blowfish_secret'] = '/blowfish_secret'] = '${blowfish_secret}/" /var/www/pma/config.inc.php
echo "\$cfg['TempDir'] = '/var/lib/phpmyadmin/tmp';" >> /var/www/pma/config.inc.php
mv code/src/phpMyAdmin/phpmyadmin.conf /etc/apache2/conf-enabled/phpmyadmin.conf
systemctl reload apache2

# =================================================
