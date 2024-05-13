# project_team-B
# Learn Terraform - Provision an EKS Cluster

This repo is a companion repo to the [Provision an EKS Cluster tutorial](https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks), containing
Terraform configuration files to provision an EKS cluster on AWS.


# Jenkins34 Project Breakdown
# GitHub Create a private Repository Setup [Team Lead]

Create a new GitHub repository.

Structure directories for:

`terraform/`: Terraform configurations for infrastructure.

`jenkins/`: Jenkins pipeline files and job configurations.

`scripts/`: Shell scripts for automation tasks.

# Jenkins Server Setup [2 Engineers]

**Task 1:** Provision Jenkins Server EC2 Instance

Engineer 1: Create a security group for the Jenkins server with SSH and web UI access.

Engineer 2: Use Terraform to launch the EC2 instance, attach the security group, and install Jenkins.

**Task 2:** Configure Jenkins

Engineer 1: Access Jenkins at `http://<jenkins-public-ip>:8080`.

Engineer 2: Install required Jenkins plugins:

**AWS Pipeline Plugin:** For interacting with AWS services.

**Terraform Plugin:** For executing Terraform commands.

Create a Jenkins job that triggers deployments from GitHub commits.

# Terraform Node Setup [2 Engineers]

**Task 3:** Provision the Terraform Node EC2 Instance

Engineer 3: Create a security group for the Terraform node with SSH access.

Engineer 4: Use Terraform to launch the EC2 instance, attach the security group, and enable remote access.

**Task 4:** Install and Verify Terraform

Engineer 3: Use user data to install Terraform on the EC2 instance.

Engineer 4: Verify that Terraform is installed and functional.

# Jenkins and Terraform Node Integration [1 Engineer]

**Task 5:** Integrate Jenkins with the Terraform Node

Engineer 5: Add the Terraform node to Jenkins via “Manage Jenkins” > “Manage Nodes.”

Engineer 5: Configure Jenkins jobs to run Terraform commands on the node.

# EKS Cluster Deployment [2 Engineers]

**Task 6:** Deploy EKS Cluster

**Subtask 6.1:** Set up Networking

Engineer 6: Use `main.tf` to create a VPC, subnets, and security groups for the EKS cluster.

Ensure network security and subnet configuration.

**Subtask 6.2:** Deploy EKS

Engineer 7: Use `main.tf` to deploy an EKS cluster with managed node groups.

Verify cluster accessibility, node scaling, and networking.

**Task 7:** Configure Role-Based Access

Engineer 6 and Engineer 7: Set up role-based access control for the EKS cluster using Terraform.

Confirm team members have appropriate roles for EKS resources.

# IAM Permissions [1 Engineer]

**Task 8:** Create an IAM Role and Policy

Engineer 8: Write `iam.tf` to create an IAM role and attach a policy for Jenkins and Terraform node permissions.

Ensure the role has sufficient permissions to manage EC2, EKS, and CloudWatch resources.

# Continuous Integration & Deployment [1 Engineer]

**Task 9:** Create Jenkins Pipeline for CI/CD

Engineer 5: Write a Jenkinsfile to define stages: `init`, `plan`, `apply`, `destroy`.

Add a manual approval stage before applying Terraform changes.

Notify team members via email if the build fails or passes.

# Project Review and Documentation [1 Engineer]

**Task 10:** Documentation and Review

Engineer 8: Write a `README.md` explaining how to set up Jenkins, Terraform, and the EKS cluster.

Add usage guides, troubleshooting tips, and contact information.

Review the project to ensure it aligns with DevOps best practices.
