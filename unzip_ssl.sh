#!/bin/bash -e
echo "***** unzip ssl"
sudo unzip /tmp/ssl.zip
sudo cp -R /tmp/ssl /etc/httpd/conf.d/ssl