#!/bin/bash

# Setup Hostname 
sudo hostnamectl set-hostname "web.softobiz.com"

# Update the hostname part of Host File
sudo /bin/sh -c 'echo "`hostname -I | awk '{ print $1 }'` `hostname`" >> /etc/hosts' 

# Update Ubuntu Repository 
#apt update 

# Download, & Install Utility Softwares 
#apt install git wget unzip curl tree -y 

# Download, Install & Configure Web Server i.e. Apache2 
sudo apt-get install apache2 -y 

cd /opt/

# Deploy a simple Website from Github 
sudo git clone https://github.com/keshavkummari/keshavkummari.git

# Go inside of the folder
cd keshavkummari
sudo chown -R $(whoami):$(whoami) /opt/*
sudo chmod -R +rwx /opt/*

# And move the code o document root
sudo mv * /var/www/html/
