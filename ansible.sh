#!/bin/bash -e
sudo yum clean all
sudo yum update -y
sudo yum install -y epel-release
sudo yum install -y ansible
sudo yum install -y zip
sudo yum install -y unzip
sudo yum install -y wget