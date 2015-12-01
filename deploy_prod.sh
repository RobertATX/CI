#!/bin/bash
ansible-playbook ./CL/prod/deploy.yml --private-key=\
./ssh_keys/prod_key_np -u deployer -i ./CL/prod/hosts
