#!/bin/bash
# =================================================
echo -e "\e[92m -========Install PostfixAdmin ...========- \e[39m"
# =================================================


mv /var/www/postfixadmin-postfixadmin-3.3.11 /var/www/postfixadmin

PASSWORD_DEFAULT=$(php -r "echo password_hash('some password here', PASSWORD_DEFAULT);")


mkdir -p /srv/postfixadmin/templates_c
chown -R www-data:www-data /srv/postfixadmin/templates_c

