#!/bin/bash -e
echo '***** install java'
sudo yum install -y java-1.8.0-openjdk-devel
echo '***** Configuring application'
sudo groupadd tomcat
echo 'Adding dev01 user'
sudo useradd -s /bin/sh -g tomcat -d /data1/tomcat dev01
sudo wget http://mirror.rise.ph/apache/tomcat/tomcat-8/v8.5.13/bin/apache-tomcat-8.5.13.tar.gz
sudo tar xvf apache-tomcat-8*tar.gz -C /data1/tomcat --strip-components=1
sudo chgrp -R tomcat conf
sudo chmod g+rwx conf
sudo chmod g+r conf/*
sudo chown -R dev01 work/ temp/ logs/
echo '***** Starting Java'
sudo ./bin/startup.sh
