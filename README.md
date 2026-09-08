# AWS CI/CD Deployment & Incident Troubleshooting

A hands-on **AWS CI/CD project** that automates application deployment from GitHub to an Amazon EC2 web server using **AWS CodePipeline and CodeDeploy**.

The project goes beyond a basic pipeline by intentionally simulating and resolving real-world deployment and infrastructure failures, demonstrating how a Cloud Support / DevOps engineer investigates issues and restores service.

##  Project Overview

**GitHub -> AWS CodePipeline -> AWS CodeDeploy -> EC2 -> Apache Web Application**

The pipeline automatically takes application changes from GitHub and deploys them to an EC2 instance running Amazon Linux 2023 and Apache.

##  AWS Technologies

* **Amazon EC2** — Application server
* **AWS CodePipeline** — CI/CD orchestration
* **AWS CodeDeploy** — Automated deployment
* **IAM** — Permissions and access control
* **Security Groups** — Network access control
* **GitHub** — Source code management
* **Apache** — Web server
* **Linux** — Server administration

##  Realistic Incident Troubleshooting

To demonstrate operational troubleshooting, five controlled incidents were introduced and resolved:

Incident                                    | Area                       

01 - Apache Service Failure               Linux / Service Management 
02 - Security Group Network Issue         AWS Networking             
03 - CodePipeline IAM Permission Failure  IAM / CI/CD                
04 - CodeDeploy Agent Stopped             Deployment Troubleshooting 
05 - EC2 Application Unreachable          Application Availability   

Each incident follows:

**Detect -> Investigate -> Root Cause -> Remediate -> Validate -> Document**

## Evidence-Based Documentation

Each incident includes screenshots showing the **failure, investigation, root cause, remediation, and successful recovery**, providing evidence of hands-on troubleshooting rather than only documenting the final configuration.

##  Skills Demonstrated

**CI/CD • AWS • EC2 • CodePipeline • CodeDeploy • IAM • Security Groups • Linux • Apache • Troubleshooting • Root Cause Analysis • Incident Response**

### Project Outcome

Built and operated an automated AWS deployment pipeline while troubleshooting multiple failure scenarios across CI/CD, IAM, networking, Linux services, and application availability.
