#!/bin/bash
echo "Installing Ansible..."
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
sudo apt-get install -y fail2ban python-pip python-dev python-virtualenv git fabric
sudo pip install ansible
sudo mkdir /etc/ansible
sudo touch /etc/ansible/hosts
git clone https://github.com/RobertATX/CI.git
