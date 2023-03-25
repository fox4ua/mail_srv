#!/bin/bash
# =================================================
echo -e "\e[92m -========Install PostfixAdmin ...========- \e[39m"
# =================================================
mv code/src/postfixAdmin/files /var/www/postfixadmin
chown -R www-data:www-data /var/www/postfixadmin


PASSWORD_DEFAULT=$(php -r "echo password_hash('some password here', PASSWORD_DEFAULT);")


mkdir -p /var/www/postfixadmin/templates_c
chmod -R 775 /var/www/postfixadmin/templates_c/
chown -R www-data:www-data /var/www/postfixadmin/templates_c

mv code/src/postfixAdmin/postfixadmin.conf /etc/apache2/conf-enabled/postfixadmin.conf
systemctl reload apache2
# =================================================