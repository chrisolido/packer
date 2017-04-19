# packer by Chris Olido

This script is a 3 tier setup three (3) AMI images that will create below
1. Web Server Tier
2. Application Tier
3. Database Tier

TO RUN PACKER 

'packer build -debug active.json'

The '-debug' is for debugging purpose 

In this active.json you have the following.

IMAGE WEB SERVER TIER
 
1. Install httpd

2. Install tomcat

3-a. Separate image install mysql
	- install mysql
	- redis

3-b. Separate image install oracle
	- install oracle-xe
	- redis

ONE THE IMAGES IS CREATED, WE WILL UPLOAD THE NEEDED FILES.

1. httpd 
	a. httpd.conf - this is the proxy server going to tomcat

2. tomcat
	a. server.xml
	b. all war file needed. (e.g. morfeus, morfeusapi, morfeussdk, morfeusweb,morfeusadmin )

3-a. mysql 
	a. create user and password for morfeus
	b. create the database
	c. create the schema

3-b. oracle
	a. create user and password for morfeus
	b. create the database
	c. create the schema
