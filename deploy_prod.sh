#!/bin/bash
#ansible-playbook ./CI/prod/deploy.yml --private-key=\
#./ssh_keys/prod_key_np -u deployer -i ./CI/prod/hosts
ansible-playbook -c local deploy.yml 
