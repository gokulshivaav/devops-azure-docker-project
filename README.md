Art Project of Docker Deployment of Azure Devops.

Application of Infrastructure as Code, Configuration Management, Docker and CI/CD Pipeline to deploy automated containers within Azure in Microsoft.

A production-type DevOps workflow is applied in this project to provide the infrastructure, set up the servers, produce container images and deploy an application in a web-based environment with the help of an automatic deployment.

🏗 Architecture

Workflow Overview:

CI/CD Pipeline Docker Build and Test Repo CI/CD Docker Build and Test Run Containered Application to Azure VM.

Core Stack

Cloud: Microsoft Azure

IaC: ARM Templates

Configuration Management: Ansible.

Containerization: Docker

CI/CD: Azure Devops (YAML Pipeline).

Application: Python Flask

OS: Ubuntu Linux (Azure VM)

Infrastructure Provisioning.

Infrastructure such as the capacity to repeatably and automatically deploy is provisioned using ARM templates, including:

Azure Virtual machine (ubuntu)

Virtual Network & Subnets

Network Security Groups

RBAC configuration

🔧 Configuration Management

Ansible is used to automate system set up and Docker.

ansible-playbook setups-docker.yml inventory.ini.
🐳 Docker Deployment

Build the container:

docker build -t flask-app .

Run the container:

docker run -d -p 80:80 flask-app
🔄 CI/CD Pipeline

TAML pipeline of Azure DevOps:

Triggers on code push

Builds Docker image

Runs tests

Deploys to Azure VM

Updates running container

This would ensure the flow of delivery with the least human input.

🔐 Security Practices

Role-Based Access control (RBAC).

Network Security Groups (NSG)

Minimization of Privileges.

Secure SSH configuration

📈 Future Improvements

Azure Kubernetes Service (AKS)

Azure Container Registry (ACR)

Load balancing & auto-scaling

Terraform (multi-cloud IaC)

👨‍💻 Author

Gokul Shiva Kumar
Containerization Cloud Infrastructure | DevOps.
