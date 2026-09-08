
# Incident 04 — CodeDeploy Agent Stopped

##  Incident Overview

A production-style deployment was intentionally disrupted by stopping the **AWS CodeDeploy Agent** on the target EC2 instance.

When a deployment was triggered through **GitHub → AWS CodePipeline → AWS CodeDeploy → EC2**, the deployment failed.

I investigated the issue using the deployment status, CodeDeploy lifecycle events, and EC2 service status, identified the root cause, restored the agent, and successfully redeployed the application.

> **Support approach:** Detect -> Investigate -> Identify Root Cause -> Remediate -> Validate

---

---

## 🔎 Incident Investigation

### 1. Initial Environment / Failure Setup

The deployment environment was prepared for incident reproduction.

![Initial Setup](images/01-codedeploy-agent-running.png)

### 2. Failure Condition Introduced

The deployment environment was intentionally modified to reproduce a deployment-side failure.

![Failure Condition](images/02-script-permission-removed.png)

### 3. Pipeline Deployment Failed

A deployment was triggered through the CI/CD pipeline.

The Source stage completed successfully, but the Deploy stage failed.

The pipeline reported a `HEALTH_CONSTRAINTS` deployment error.

![Pipeline Deployment Failed](images/03-pipeline-deploy-failed.png)

### 4. Traced the Failure to CodeDeploy

The failed deployment was investigated directly in CodeDeploy.

Deployment:

`d-AYDFNDS98`

The target EC2 instance failed during the `ApplicationStop` lifecycle event.

![CodeDeploy Deployment Failed](images/04-codedeploy-deployment-failed.png)

### 5. Identified the Actual Error

The `ApplicationStop` event returned `UnknownError`.

CodeDeploy reported that the **CodeDeploy Agent was not able to receive the lifecycle event** and recommended checking whether the agent was running and able to connect to the CodeDeploy service.

![CodeDeploy Agent Error](images/05-codedeploy-agent-error.png)

### 6. Confirmed the Root Cause on EC2

The CodeDeploy Agent service was checked directly on the EC2 instance:

```bash
sudo systemctl status codedeploy-agent
```

The service was confirmed as:

```text
Active: inactive (dead)
```

**Root Cause:** The CodeDeploy Agent was stopped, preventing the EC2 instance from receiving deployment lifecycle events.

![CodeDeploy Agent Stopped](images/06-codedeploy-agent-stopped.png)

---

##  Remediation

The CodeDeploy Agent was restarted and its service state was verified:

```bash
sudo systemctl start codedeploy-agent
sudo systemctl status codedeploy-agent
```

The agent returned to:

```text
Active: active (running)
```

![CodeDeploy Agent Restored](images/07-codedeploy-agent-restored.png)

---

##  Validation

The deployment was retried after restoring the CodeDeploy Agent.

The application deployment completed successfully, confirming that the remediation resolved the incident.

![Deployment Successful](images/08-deployment-success.png)

---

## Skills Demonstrated

* AWS CodePipeline troubleshooting
* AWS CodeDeploy deployment investigation
* EC2 service troubleshooting
* Linux `systemctl` service management
* Lifecycle-event analysis
* Root-cause identification
* Incident remediation and validation
* Evidence-based technical documentation

### Key Takeaway

This incident demonstrates the ability to move beyond simply identifying a **"deployment failed"** message and systematically trace the problem from the CI/CD pipeline to the CodeDeploy lifecycle event and finally to the underlying EC2 service.

**Detect -> Investigate -> Diagnose -> Fix -> Verify -> Document**
