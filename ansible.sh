#!/bin/bash

# Update the Repository
sudo apt update

# Download, Install & Configure Ansible
sudo apt install software-properties-common -y 

sudo apt install git curl unzip tree wget -y

sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt install ansible -y 

# Refresh the Terminal
/bin/bash
