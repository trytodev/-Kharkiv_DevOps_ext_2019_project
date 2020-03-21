#!/bin/bash

cd ~/terraform
terraform apply -auto-approve
terraform output | sudo grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | sudo tee /etc/ansible/hosts
cd ~/ansible
ansible-playbook server.yml