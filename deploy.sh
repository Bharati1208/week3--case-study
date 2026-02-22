#!/bin/bash

echo "Creating infrastructure..."

cd terraform
terraform init
terraform apply -auto-approve

IP=$(terraform output -raw public_ip)

echo "Server IP: $IP"

cd ../ansible

echo "[web]" > inventory.ini
echo "$IP ansible_user=ubuntu ansible_ssh_private_key_file=~/Day29.pem" >> inventory.ini

sleep 60

echo "Running Ansible..."

ansible-playbook -i inventory.ini nginx.yml

echo "Deployment Complete!"
