#!/bin/bash
echo "Installing Ansible..."
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
sudo apt-get install -y fail2ban python-pip python-dev python-virtualenv git
sudo pip install ansible



if [ ! -d "/etc/ansible" ]; then 
   sudo mkdir /etc/ansible
   sudo touch /etc/ansible/hosts
fi

if [ -d "CI" ]; then 
  CD CI
  git pull
  else
  git clone https://github.com/RobertATX/CI.git
  
fi

#ansible-playbook ./CI/prod/deploy.yml 

ansible-playbook -c local ./CI/prod/deploy.yml 
#--private-key=\
#./ssh_keys/prod_key -u deployer -i="./CI/prod/hosts"
