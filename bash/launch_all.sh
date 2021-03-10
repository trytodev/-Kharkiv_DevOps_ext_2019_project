#!/bin/bash

cd ~/Kharkiv_DevOps_ext_2019_project/terraform
terraform apply -auto-approve
terraform output | sudo grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | sudo tee /etc/ansible/hosts
cd ~/Kharkiv_DevOps_ext_2019_project/ansible
ansible-playbook server.yml
