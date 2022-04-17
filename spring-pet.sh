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