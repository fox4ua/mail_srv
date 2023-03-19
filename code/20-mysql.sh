#!/bin/bash
export ROOT_DB_PASS="rooty";

# =================================================
echo -e "\e[92m -========Install MariaDB ...========- \e[39m"
# =================================================
curl -o /etc/apt/trusted.gpg.d/mariadb_release_signing_key.asc 'https://mariadb.org/mariadb_release_signing_key.asc'
sh -c "echo 'deb https://fastmirror.pp.ua/mariadb/repo/10.11/debian bullseye main' >>/etc/apt/sources.list"
apt-get update -y
# =================================================
apt-get install mariadb-server mariadb-client -y
# =================================================
mysql_secure_installation 2>/dev/null <<MSI

n
y
${ROOT_DB_PASS}
${ROOT_DB_PASS}
y
y
y
y

MSI
# =================================================
systemctl restart mariadb
systemctl enable mariadb
# =================================================
echo -e "\e[94m -========End MariaDB ...========- \e[39m"
