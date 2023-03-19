
export ROOT_DB_USER="root";
export ROOT_DB_PASS="rooty";


chmod +x code/10-mysql.sh
# source parts/10-mysql.sh
./code/10-mysql.sh

function installFirst {
echo -e "\e[92mDownload and Installing mailx cyrus-sasl cyrus-sasl-lib cyrus-sasl-plain postfix  ...\e[39m"

}

installFirst

