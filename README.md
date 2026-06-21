# AWS Resilient Infrastructure Platform

## Overview

AWS Resilient Infrastructure Platform is a Terraform-based Infrastructure as Code project designed to deploy secure, scalable, and resilient cloud environments on AWS.

The project demonstrates production-grade DevOps practices including:

* AWS Networking
* Terraform Modules
* GitHub Actions CI/CD
* Amazon ECS Fargate
* Amazon Aurora
* Amazon RDS Proxy
* IAM Roles and Policies
* CloudWatch Monitoring
* AWS Resilience Hub
* Disaster Recovery and Resilience Patterns

## Architecture Components

* VPC
* Public and Private Subnets
* Internet Gateway
* NAT Gateway
* Route Tables
* Security Groups
* ECS Fargate Services
* Application Load Balancer
* Aurora Database Cluster
* RDS Proxy
* CloudWatch Alarms
* AWS Resilience Hub

## Repository Structure

.
├── modules
│   ├── vpc
│   ├── ecs
│   ├── aurora
│   ├── rds-proxy
│   ├── iam
│   └── resilience-hub
│
├── environments
│   ├── dev
│   ├── sit
│   ├── stage
│   └── prod
│
├── .github
│   └── workflows
│
├── LICENSE
├── CONTRIBUTING.md
└── README.md

## Prerequisites

* Terraform >= 1.9
* AWS Account
* GitHub Account
* AWS CLI
* Appropriate IAM Permissions

## Deployment

Initialize Terraform:

terraform init

Validate configuration:

terraform validate

Create execution plan:

terraform plan

Deploy infrastructure:

terraform apply

## Security

* Secrets must never be committed.
* Use AWS Secrets Manager for sensitive values.
* Follow least-privilege IAM principles.
* Enable branch protection for main and develop branches.

## Contribution Workflow

1. Create a feature branch.
2. Implement changes.
3. Submit a Pull Request.
4. Obtain approval.
5. Merge into main & promote through release process

## License

This project is proprietary software.

Source code is provided only to authorized contributors.

Unauthorized copying, distribution, modification, or commercial use is prohibited.

## Contact
ramesh.guggilam19@gmail.com

For access requests, contribution approvals, or licensing inquiries, contact the repository owner.
