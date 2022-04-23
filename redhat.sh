#!/bin/bash

#################################################################################
#                                                                               #
#  'This is used to install the spring-pet application on Apache2 Server'       #
#                                                                               #
#################################################################################


sudo yum install httpd -y

sudo systemctl start httpd

sudo systemctl enable httpd.service

sudo yum install java-11-openjdk -y

java -version

wget https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar

java -jar spring-petclinic-2.4.2.jar &