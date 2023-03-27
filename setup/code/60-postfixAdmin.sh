#!/bin/bash
# =================================================
echo -e "\e[92m -========Install PostfixAdmin ...========- \e[39m"
# =================================================
mv code/src/postfixAdmin/files /var/www/postfixadmin
chown -R www-data:www-data /var/www/postfixadmin




PASSWORD_DEFAULT=$(php -r "echo password_hash('some password here', PASSWORD_DEFAULT);")
sed -i "s/setup_password'] = '/setup_password'] = '${PASSWORD_DEFAULT}/" /var/www/postfixadmin/config.local.php





mkdir -p /var/www/postfixadmin/templates_c
chmod -R 775 /var/www/postfixadmin/templates_c/
chown -R www-data:www-data /var/www/postfixadmin/templates_c

mv code/src/postfixAdmin/postfixadmin.conf /etc/apache2/conf-enabled/postfixadmin.conf
systemctl reload apache2


echo -e "\e[92mCreating database for POSTFIXADMIN ...\e[39m"
mysql -u root -p$ROOT_DB_PASS<<MYSQL_SCRIPT
FLUSH PRIVILEGES;
DROP DATABASE IF EXISTS ${POSTFIX_DB_NAME};
CREATE DATABASE IF NOT EXISTS ${POSTFIX_DB_NAME} DEFAULT CHARACTER SET utf8;
CREATE USER '${POSTFIX_DB_USER}'@'localhost';
SET PASSWORD FOR '${POSTFIX_DB_USER}'@'localhost' = PASSWORD("${POSTFIX_DB_PASS}");
GRANT ALL PRIVILEGES ON ${POSTFIX_DB_NAME}.* TO '${POSTFIX_DB_USER}'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT
# =================================================
