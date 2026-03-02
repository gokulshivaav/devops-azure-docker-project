
Automated Container Deployment and Administration in the Cloud
Project Overview

This project demonstrates a fully automated cloud-based deployment pipeline for a containerized Flask web application hosted on Microsoft Azure.
The solution integrates:
Infrastructure as Code (IaC) using Terraform
Containerization using Docker
Configuration Management using Ansible
CI/CD Automation using GitHub Actions
Cloud Hosting on Microsoft Azure Virtual Machine

The project reflects modern DevOps practices by automating infrastructure provisioning, server configuration, application containerization, and continuous deployment.

Architecture Overview

The architecture follows a layered DevOps model:

Terraform provisions Azure infrastructure:
Resource Group
Virtual Network (VNet)
Subnet
Public IP
Network Interface
Ubuntu Virtual Machine
Ansible connects to the VM via SSH to:
Install Docker
Configure dependencies
Deploy the Flask container
Docker packages the Flask application and its dependencies.
GitHub Actions automates:
Code checkout
Docker image build
SSH connection
Ansible execution
Application deployment
Users access the application via the VM’s Public IP (Port 80).

Project Objectives

Provision Azure infrastructure using Terraform.
Deploy a secure Virtual Machine with networking components.
Containerize a Flask web application using Docker.
Automate server configuration with Ansible.
Implement CI/CD pipeline using GitHub Actions.
Enable repeatable, scalable, and secure deployments.

🛠️ Technologies Used
Technology	Purpose
Microsoft Azure	Cloud Infrastructure
Terraform	Infrastructure as Code
Ubuntu VM	Application Hosting
Docker	Containerization
Flask	Web Application Framework
Ansible	Configuration Management
GitHub Actions	CI/CD Automation


📂 Project Structure
.
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   ├── inventory.ini
│   └── deploy.yml
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── templates/
├── Dockerfile
├── .github/workflows/
│   └── deploy.yml
└── README.md

⚙️ Infrastructure Provisioning (Terraform)

Terraform is used to define Azure infrastructure declaratively.

Commands:
terraform init
terraform plan
terraform apply

This creates:

Resource Group
Virtual Network
Subnet
Public IP
Network Interface
Ubuntu Virtual Machine
Infrastructure is version-controlled and reproducible.

🐳 Application Containerization (Docker)

The Flask application performs basic arithmetic operations:
Addition
Subtraction
Multiplication
Division

Build Docker Image:
docker build -t flask-app .
Run Container:
docker run -d -p 80:80 flask-app

Docker ensures:
Portability
Isolation
Consistency across environments

🤖 Configuration Management (Ansible)
Ansible automates:
Docker installation
System updates
Pulling container image

Running Flask container

Run Playbook:
ansible-playbook -i inventory.ini deploy.yml
Ansible ensures idempotent and repeatable configuration.

🔄 CI/CD Pipeline (GitHub Actions)

The CI/CD pipeline is triggered automatically on every push to the repository.

Workflow Steps:
Checkout code
Build Docker image
Connect to Azure VM via SSH
Run Ansible playbook
Deploy updated application
This eliminates manual deployment and ensures continuous delivery.

🔐 Security Implementation
SSH key-based authentication
Network Security Groups (NSG)
Open ports restricted to:
22 (SSH)
80 (HTTP)
GitHub Secrets for sensitive credentials

Least privilege access principle

 Challenges Faced
Terraform authentication configuration
SSH connectivity issues
Docker port conflicts
CI/CD workflow debugging
All were resolved through structured troubleshooting and log analysis.

📈 Key Benefits
Fully automated deployment
Infrastructure version control
Faster release cycles
Reduced manual errors
Secure cloud architecture
Reproducible environments

Future Improvements
Implement Azure Kubernetes Service (AKS)
Add monitoring with Azure Monitor
Implement HTTPS with SSL certificates
Add automated testing stage in CI pipeline

🎓 Academic Context
This project was developed as part of:

Module: Network Systems and Administration
Subject Code: B9IS121
Student: Gokul Shiva Kumar
Student ID: 20097813

Conclusion
This project demonstrates a complete DevOps workflow integrating Infrastructure as Code, containerization, configuration management, and CI/CD automation on Microsoft Azure.
It reflects real-world enterprise deployment practices and highlights the importance of automation, scalability, and security in modern cloud engineering.
