# Lab 02b – Manage Governance via Azure Policy

## Overview

This lab focuses on implementing Azure governance using Azure Policy, resource tags, and resource locks. It covers enforcing organizational standards, managing resource compliance, and protecting Azure resources.

## Objectives

- Assign tags to Azure resources.
- Enforce resource tagging using Azure Policy.
- Update existing resources with tags.
- Configure resource locks.
- Understand Azure Policy compliance.

## Prerequisites

- Active Azure subscription.
- Access to Azure Portal.
- Appropriate permissions to create resource groups and assign policies.
- Basic understanding of Azure resource management.

## Implementation

### Task 1: Assign Tags via Azure Portal

1. Opened the Azure Portal.
2. Navigated to Resource Groups.
3. Created a resource group named `az104-rg2`.
4. Selected East US as the region.
5. Added a Cost Center tag with the value `000`.
6. Created the resource group.

### Task 2: Enforce Tagging via Azure Policy

1. Opened Azure Policy.
2. Explored the available policy definitions.
3. Selected the Require a tag and its value on resources policy.
4. Assigned the policy to the `az104-rg2` resource group.
5. Configured the Cost Center tag and its value as policy parameters.
6. Reviewed the policy assignment.

### Task 3: Verify Policy Enforcement

1. Navigated to Storage Accounts.
2. Attempted to create a storage account without the required tag.
3. Reviewed the policy validation message.
4. Examined the policy enforcement result.

### Task 4: Update Existing Resources with Tags

1. Reviewed existing resources within the resource group.
2. Examined the tagging configuration of existing resources.
3. Applied the required tags where applicable.
4. Verified the updated resource tags.

### Task 5: Configure Resource Locks

1. Navigated to the relevant Azure resource.
2. Opened the Locks section.
3. Reviewed the available lock types.
4. Configured the required resource lock.
5. Verified that the lock was applied successfully.

## Results

Document the resource tagging, policy assignment, policy enforcement, and resource lock configurations completed during the lab.

## Key Learnings

- Azure tags help organize and identify resources.
- Azure Policy enforces organizational standards.
- Policy assignments apply rules to defined scopes.
- Policy compliance helps identify resources that do not meet requirements.
- Resource locks help protect resources against accidental deletion or modification.

## Reference

[Microsoft AZ-104 – Lab 02b: Manage Governance via Azure Policy](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_02b-Manage_Governance_via_Azure_Policy.md)

## Screenshots

Add screenshots of the completed configurations.
