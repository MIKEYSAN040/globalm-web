# Deployment Documentation

## Project

**GlobalM Web — AWS CI/CD Deployment**

This project demonstrates the deployment of a static website to an Amazon EC2 instance using an automated CI/CD pipeline.

## Architecture

**GitHub -> AWS CodePipeline -> AWS CodeDeploy - EC2 -> Apache -> Website**

## Deployment Components

* **GitHub** — Source code repository
* **AWS CodePipeline** — Automates the deployment workflow
* **AWS CodeDeploy** — Deploys application files to EC2
* **Amazon EC2** — Hosts the web application
* **Apache (httpd)** — Web server
* **Security Group** — Controls inbound HTTP traffic on port 80

## Deployment Process

1. Application code is committed to GitHub.
2. CodePipeline detects the change.
3. CodePipeline creates the deployment artifact.
4. CodeDeploy deploys the application to EC2.
5. Apache serves the deployed website.
6. The live application is validated through the public IP address.

## Deployment Result

The application was successfully deployed and verified through the complete CI/CD workflow.

**Deployment Status:** Successful
**Application Status:** Available
**Deployment Target:** Amazon EC2
**Web Server:** Apache
**Protocol:** HTTP



## Project Focus

**Deploy → Monitor → Troubleshoot → Resolve → Validate**

