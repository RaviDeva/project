#!/bin/bash
apt-get -y update

# set up a silent install of MySQL
# dbpass=$1

# export DEBIAN_FRONTEND=noninteractive
# echo mysql-server-5.6 mysql-server/root_password password $dbpass | debconf-set-selections
# echo mysql-server-5.6 mysql-server/root_password_again password $dbpass | debconf-set-selections

# install the LAMP stack
apt-get -y install apache2 mysql-server php5 php5-mysql unzip
sudo su
#mkdir tmp

cd /tmp

git init

git clone "https://github.com/santoshreddyspy13/terraform"

cd /tmp/terraform


#mysqladmin create armdatabase

mysql -uroot armdatabase < redlog.sql


#mkdir file

#cp redlog.zip file

#cd file

unzip redlog.zip

cd /tmp/terraform/redlog/

cp -r * /var/www/html/

# cd ..

# rm -rf file

# cd ..

# cd ..

#rm -rf tmp


# restart Apache
apachectl restart
