# Umberlla Project - Small Devops Practice
# DevOps Practice Project
**This project was made by:**


LIOR MATANA and .

.

.

.

.

.

.

.

.

(shai levi-didnt really do something, just watched as a guest from the sofa) 

This project is a small DevOps practice project that combines various tools and technologies to set up a complete CI/CD pipeline. It utilizes Terraform, Packer, Git, Ansible, and Jenkins to automate infrastructure provisioning, application deployment, and continuous integration.

## Overview

The project involves the following components and their respective roles:

- **Terraform**: Infrastructure as Code (IaC) tool used to provision and manage the cloud infrastructure on AWS.

- **Packer**: Tool used to create machine images or virtual machine templates that can be used for consistent deployments.

- **Git**: Version control system used to manage the source code of the project and facilitate collaboration.

- **Ansible**: Configuration management tool used to automate the setup and configuration of servers.

- **Jenkins**: Continuous Integration/Continuous Deployment (CI/CD) tool used to automate the build, test, and deployment processes.

## Prerequisites

Before getting started, ensure that you have the following prerequisites:

- AWS account: You will need an AWS account with appropriate permissions to provision resources.

- Git: Install Git to clone the project repository and manage source code.

- Terraform: Install Terraform to provision infrastructure.

- Packer: Install Packer to create machine images.

- Ansible: Install Ansible to automate server configuration.

- Jenkins: Set up a Jenkins server for CI/CD.


## TroubleShooting
**Access Denied through Terraform**

You may running this project on AWS Sandbox as we did. AWS will block configuration of instance image as for you dont have premissions.
run an instance on your own with out Terraform.

**Installing Ansible and Jenking on EC2**

1.First check if you chose the ubuntu AMI 

2.connect to your ec2 and run the Ansible installation script bash.

3.run the Jenkings script bash,here you suppose to have problems. 
 3.1 gpg- try:
 

## Acknowledgments
Special thanks to Soham Roy for providing the initial
guidance and inspiration for this DevOps practice project.


Feel free to customize the content based on your specific project and add any additional sections or information that you find relevant.


https://medium.com/@roy.soham89/devops-practice-a-small-project-to-head-start-terraform-packer-git-ansible-jenkins-46f5b95d63d7
