#!/bin/bash

if [ ! -f apache-tomcat-8.5.85.tar.gz ]; then
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.85/bin/apache-tomcat-8.5.85.tar.gz
fi

tar -xvzf apache-tomcat-8.5.85.tar.gz -C /opt/

/usr/bin/id tomcat

if [ $? ]; then
useradd tomcat
fi

if [ $? ]; then
passwd tomcat
fi

cd /opt/apache-tomcat-8.5.85/
ls
chown -R tomcat:tomcat /opt/apache-tomcat-8.5.85/
cd /opt/apache-tomcat-8.5.85/conf
cp tomcat-users.xml tomcat-users.xml.bkp
