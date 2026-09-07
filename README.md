# GlobalM — AWS CI/CD Web Deployment
## Project Overview

GlobalM is a static website deployed on an Amazon EC2 instance using a fully automated CI/CD pipeline.

The project demonstrates how source-code changes can be automatically transferred from GitHub to an EC2 web server using AWS CodePipeline and AWS CodeDeploy.

The project also focuses on cloud support and troubleshooting practices, including service, networking, deployment, and application-level verification.

## Architecture
Developer
    │
    │ Git Push
    -
GitHub Repository
    │
    │ Source
    -
AWS CodePipeline
    │
    │ Deploy
    -
AWS CodeDeploy
    │
    │ Deployment
    -
Amazon EC2
    │
    │ Apache HTTP Server
    -
GlobalM Website


## Last updated for CodeDeploy Agent troubleshooting demonstration.
