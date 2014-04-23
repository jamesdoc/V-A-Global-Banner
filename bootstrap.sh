#!/usr/bin/env bash

# Go install a LAMP stack
sudo apt-get update
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password mypass'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password mypass'
sudo apt-get -q -y install mysql-server-5.5 php5-mysql php5-gd apache2 php5

# Configure apache to look at the correct folder, and enable symlinks
rm -rf /var/www
ln -fs /vagrant/www /var/www
a2enmod rewrite
sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default
service apache2 restart


echo 'And away we go...'