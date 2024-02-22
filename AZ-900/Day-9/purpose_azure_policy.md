# Azure Policy Overview

- **Purpose:**
  - Ensure resource compliance with corporate standards.
  - Enable creation, assignment, and management of policies.
  - Control or audit resource configurations.

- **Key Features:**
  - Create, assign, and manage policies.
  - Enforce rules across resource configurations.
  - Ensure compliance with corporate standards.

- **Alerting:**
  - Receive alerts for changes in resource configurations.

## How does Azure Policy define policies?

- **Policy Definition:**
  - Define individual policies or groups (initiatives).
  - Evaluate resource compliance and highlight noncompliant resources.
  - Prevent creation of noncompliant resources.

- **Scope and Inheritance:**
  - Policies applicable at resource, group, subscription levels.
  - Inherited policies cascade down to child resources.

- **Built-in Policies:**
  - Covers Storage, Networking, Compute, Security Center, Monitoring.
  - Examples: VM size restrictions, tagging requirements.

- **Automatic Remediation:**
  - Auto-fix noncompliant resources based on policy.
  - Exceptions can be set for specific resources.

- **Integration:**
  - Works with Azure DevOps for CI/CD pipeline policies.

## Azure Policy Initiatives

- **Definition:**
  - Group related policies together for tracking compliance.
  - Contains all policy definitions for a larger goal.

- **Example:**
  - **Initiative Name:** Enable Monitoring in Azure Security Center
  - **Goal:** Monitor all security recommendations for Azure resources.
  - **Included Policies:** Over 100, including monitoring unencrypted SQL databases, OS vulnerabilities, and missing endpoint protection.
