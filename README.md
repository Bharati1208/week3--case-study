# Week 3 Case Study – Terraform + Ansible

## Project Goal

Create EC2 using Terraform and install NGINX using Ansible in one workflow.

---

## What This Project Does

1. Terraform creates an EC2 instance in AWS (us-east-1)
2. Terraform outputs the public IP
3. Ansible connects to the EC2 server using SSH
4. Ansible installs and starts NGINX
5. Custom message is added to index.html

---

## Project Structure

week3_case_study/
│
├── terraform/
│   ├── main.tf
│   ├── backend.tf
│   ├── variables.tf
│   └── output.tf
│
├── ansible/
│   ├── inventory.ini
│   └── nginx.yml
│
└── README.md

---

## How to Run

Step 1: Initialize Terraform

terraform init

Step 2: Create Infrastructure

terraform apply -auto-approve

Step 3: Run Ansible Playbook

ansible-playbook -i inventory.ini nginx.yml

---

## Output

Open in browser:

http://<EC2_PUBLIC_IP>

You will see:

Welcome to Bharati Demo Server

---

## Tools Used

* Terraform
* Ansible
* AWS EC2
* AWS S3 (Remote State)
* NGINX

---

## Result

Infrastructure and application deployed successfully.

---
