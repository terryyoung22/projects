#!/bin/bash

#chmod +x nwewordpress.sh  to run properly


#shortcut for the install:
# apt install tasksel
# tasksel install lamp-server


#updates
apt-get update
apt-get upgrade -y

#start install LAMP
apt install git -y
apt insatll vim -y
apt install wget -y
apt install apache2 -y
apt install mysql-server mysql-client -y
apt install php7.2 libapache2-mod-php7.2 php-mysql -y
# start the services
service mysql start
service apache2 start
service --status-all

#mysql_secure_installation ##run for a more secure instillation 

# install wordpress
a2enmod rewrite
mkdir -p /var/www/html/testsite/src/
cd /var/www/html/testsite/
chown -R www-data:www-data /var/www/html/testsite/
wget http://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mv latest.tar.gz wordpress-`date "+%Y-%m-%d"`.tar.gz
chown -R www-data:www-data /var/www/html/testsite