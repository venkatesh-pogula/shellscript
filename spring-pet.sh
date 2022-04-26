#!/bin/bash

#################################################################################
#                                                                               #
#  'This is used to install the spring-pet application on Apache2 Server'       #
#                                                                               #
#################################################################################

sudo apt update

sudo apt install apache2 -y

sudo apt install mysql-server -y

sudo systemctl start mysql.service

sudo apt install openjdk-11-jdk -y

wget https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar

java -jar spring-petclinic-2.4.2.jar &



sudo apt update
    2  sudo wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    3  sudo dpkg -i packages-microsoft-prod.deb
    4  sudo apt-get update
    5  sudo apt-get install -y apt-transport-https aspnetcore-runtime-6.0
    6  dotnet --list-runtimes
    7  sudo apt install apache2 -y
    8  sudo systemctl status apache2
   11  sudo mkdir /var/www/nopCommerce450
   12  cd /var/www/nopCommerce450
   13  sudo wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.2/nopCommerce_4.50.2_NoSource_linux_x64.zip
   14  sudo apt-get install unzip
   15  sudo unzip nopCommerce_4.50.2_NoSource_linux_x64.zip
   16  sudo mkdir bin
   17  sudo mkdir logs
   18  cd ..
   19  sudo chgrp -R www-data nopCommerce450/
   20  sudo chown -R www-data nopCommerce450/
   21  sudo /usr/bin/dotnet /var/www/nopCommerce450/Nop.Web.dll &