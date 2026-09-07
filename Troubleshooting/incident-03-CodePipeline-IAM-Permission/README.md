# Incident 03 – CodePipeline IAM Permission Failure

## Overview

A CodePipeline deployment failed due to insufficient IAM permissions, preventing CodePipeline from accessing the CodeDeploy application revision.

---

## 1. Deployment Failure

The pipeline failed during the Deploy stage with an **Insufficient permissions** error.

![Pipeline Failure](01-pipeline-failed-insufficient-permissions.png)

**Observation:** The error indicated that the CodePipeline service role was not authorized to perform `codedeploy:GetApplicationRevision`.

---

## 2. Investigation

The CodePipeline service role and its attached IAM policies were reviewed.

![Service Role](02-pipeline-service-role.png)

The IAM policy was inspected to identify the missing permission.

![Policy Investigation](03-iam-policy-investigation.png)

**Root Cause:** The `codedeploy:GetApplicationRevision` permission was not included in the service role policy.

---

## 3. Resolution

The missing IAM permission was added to the policy and the pipeline was executed again.

![Policy Updated](04-iam-policy-fixed.png)

---

## 4. Validation

The deployment completed successfully and the application was verified.

![Pipeline Success](05-pipeline-success.png)

![Application Running](06-website-restored.png)

---

## Skills Demonstrated

* AWS IAM
* AWS CodePipeline
* AWS CodeDeploy
* CI/CD Troubleshooting
* Root Cause Analysis
