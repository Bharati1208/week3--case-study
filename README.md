# Week 3 Case Study: One-Click Infrastructure with Terraform + Ansible

## Project Overview

This project demonstrates how to launch infrastructure and configure an application automatically using Terraform and Ansible.

With a single command, Terraform creates an EC2 instance and Ansible installs and configures NGINX on that server.

This simulates a real DevOps workflow used to quickly create demo environments.

---

## Requirements Implemented

* Launch EC2 instance using Terraform
* Store Terraform state remotely in AWS S3
* Use Terraform output public IP in Ansible inventory
* Install and configure NGINX using Ansible playbook
* Add custom branding to index.html
* Deploy infrastructure and application with one command

---

## Tools Used

* Terraform – Infrastructure provisioning
* Ansible – Configuration management
* AWS EC2 – Virtual server
* AWS S3 – Remote backend for Terraform state
* NGINX – Web server
* Linux – Operating system

---

## Project Structure

```text
devops/week3/case_study/
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
├── deploy.sh
└── README.md
```

---

## How It Works

Step 1: Terraform creates EC2 instance

Step 2: Terraform outputs public IP

Step 3: Ansible uses IP to connect to EC2 via SSH

Step 4: Ansible installs and starts NGINX

Step 5: Ansible updates index.html with custom banner

---

## One-Click Deployment

Run the following command:

```bash
./deploy.sh
```

This command will:

* Create EC2 instance
* Configure server using Ansible
* Install and start NGINX
* Deploy website with branding

---

## Verification

Open browser:

http://<EC2_PUBLIC_IP>

You will see:

Welcome to Bharati Demo Server

---

## Remote State Storage

Terraform state file is stored in AWS S3 for:

* Team collaboration
* State management
* CI/CD compatibility

---

## Outcome

Infrastructure and application are deployed successfully using Infrastructure as Code and Configuration Management.

---


