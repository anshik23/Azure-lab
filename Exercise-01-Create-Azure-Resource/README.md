# Exercise 02 – Create an Azure Resource

## Overview

This exercise demonstrates how to create and manage basic Azure resources using the Azure Portal.

The objective is to create a Resource Group, deploy a Virtual Machine, and explore the additional resources automatically created by Azure during deployment.

| Detail | Information |
|---|---|
| Certification | AZ-900: Microsoft Azure Fundamentals |
| Module | Describe the Core Architectural Components of Azure |
| Exercise | Create an Azure Resource |
| Estimated Duration | 15 minutes |
| Platform | Microsoft Azure Portal |

## Objectives

- Create an Azure Resource Group.
- Deploy a Virtual Machine using the Azure Portal.
- Understand how Azure organizes related resources.
- Identify the resources automatically created during VM deployment.

## Tasks Performed

### Task 1 – Create a Resource Group

1. Signed in to the [Azure Portal](https://portal.azure.com/).
2. Opened **Resource Groups**.
3. Selected **Create**.
4. Selected the required Azure subscription.
5. Entered the following configuration:

| Setting | Value |
|---|---|
| Resource Group Name | `IntroAzureRG` |
| Region | Any available region |

6. Selected **Review + Create**.
7. Selected **Create** to deploy the Resource Group.

### Task 2 – Create a Virtual Machine

1. Selected **Create a resource** from the Azure Portal.
2. Opened **Infrastructure Services**.
3. Selected **Create** under Virtual Machines.
4. Configured the VM using the following settings:

| Setting | Value |
|---|---|
| Resource Group | `IntroAzureRG` |
| Virtual Machine Name | `my-vm` |
| Region | Same region as Resource Group |
| Authentication Type | Password |
| Username | `azureuser` |
| Password | Custom password |
| Public Inbound Ports | None |

5. Kept the remaining settings at their default values.
6. Selected **Review + Create**.
7. Selected **Create** and waited for the deployment to complete.

### Task 3 – Verify Resources Created

1. Returned to the Azure Portal home page.
2. Opened **Resource Groups**.
3. Selected `IntroAzureRG`.
4. Reviewed the resources created during VM deployment.

Azure automatically created the supporting resources required by the Virtual Machine and grouped them within the same Resource Group.

## Key Learnings

- A Resource Group acts as a logical container for related Azure resources.
- Azure resources can be deployed and managed through the Azure Portal.
- Deploying a Virtual Machine may automatically create additional supporting resources.
- Resources within a Resource Group can be managed together.
- Resource Groups make it easier to organize and clean up Azure deployments.

## Screenshots

Screenshots will be added after completing the practical exercise.

Suggested screenshots:

1. Resource Group creation – `01-create-resource-group.png`
2. Resource Group overview – `02-resource-group-overview.png`
3. Virtual Machine configuration – `03-vm-configuration.png`
4. Successful VM deployment – `04-vm-deployment.png`
5. Resources inside the Resource Group – `05-resource-list.png`

## Cleanup

To avoid unnecessary Azure charges, delete the resources after completing the exercise.

1. Open **Resource Groups** in the Azure Portal.
2. Select `IntroAzureRG`.
3. Select **Delete Resource Group**.
4. If prompted, ensure force deletion for the selected Virtual Machine is enabled.
5. Enter `IntroAzureRG` to confirm.
6. Select **Delete** and confirm the deletion.

**Important:** Virtual Machines and their associated resources can incur charges while they exist. Verify that the Resource Group and its resources have been deleted.

## Status

- [ ] Resource Group created
- [ ] Virtual Machine deployed
- [ ] Resources verified
- [ ] Screenshots added
- [ ] Cleanup completed

---

**Reference:** [Microsoft Learn – Exercise: Create an Azure Resource](https://github.com/MicrosoftLearning/AZ-900-Microsoft-Azure-Fundamentals/blob/master/Instructions/Labs/02-exercise-create-azure-resource.md)
