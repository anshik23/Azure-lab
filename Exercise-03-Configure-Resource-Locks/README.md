
# Exercise 08 – Configure Resource Locks

## Overview

This exercise demonstrates how to configure and manage resource locks in Microsoft Azure to protect resources from accidental modification or deletion.

The objective is to create an Azure Storage Account, apply different types of resource locks, understand how these locks affect resource operations, and remove the locks when they are no longer required.

| Detail | Information |
|---|---|
| Certification | AZ-900: Microsoft Azure Fundamentals |
| Module | Describe Features and Tools in Azure for Governance and Compliance |
| Exercise | Configure Resource Locks |
| Estimated Duration | 15 minutes |
| Platform | Microsoft Azure Portal |
| Service | Azure Resource Locks |

## Objectives

- Understand the purpose of Azure Resource Locks.
- Create an Azure Resource Group.
- Create an Azure Storage Account.
- Apply a Read-only resource lock.
- Understand the impact of resource locks on resource operations.
- Modify a Read-only lock to a Delete lock.
- Remove resource locks and delete Azure resources.

## Tasks Performed

### Task 1 – Create a Resource Group

1. Signed in to the Azure Portal.
2. Navigated to **Resource Groups**.
3. Selected **Create**.
4. Configured the following settings:

| Setting | Value |
|---|---|
| Subscription | Selected Azure Subscription |
| Resource Group Name | `IntroAzureRG` |
| Region | Central US |

5. Selected **Review + Create**.
6. Reviewed the configuration and selected **Create**.
7. Returned to the Azure Portal home page.

### Task 2 – Create a Storage Account

1. Selected **Create a Resource**.
2. Opened **Infrastructure Services**.
3. Located Storage Account and selected **Create**.
4. Configured the storage account using the following settings:

| Setting | Value |
|---|---|
| Resource Group | `IntroAzureRG` |
| Storage Account Name | Unique storage account name |
| Location | Central US |
| Performance | Standard |
| Redundancy | Locally Redundant Storage (LRS) |

5. Selected **Review + Create**.
6. Waited for Azure to validate the configuration.
7. Selected **Create** to deploy the storage account.
8. Selected **Go to Resource** after successful deployment.

### Task 3 – Apply a Read-only Resource Lock

1. Opened the newly created Storage Account.
2. Navigated to the **Settings** section.
3. Selected **Locks**.
4. Selected **+ Add**.
5. Entered a name for the resource lock.
6. Verified that the Lock Type was set to **Read-only**.
7. Selected **OK** to apply the lock.

A Read-only lock prevents users from modifying or deleting the protected resource.

### Task 4 – Add a Container to the Storage Account

1. Navigated to the **Data Storage** section.
2. Selected **Containers**.
3. Selected **+ Container**.
4. Entered a container name.
5. Selected **Create**.
6. Observed the error message indicating that the storage container could not be created.

This happened because the Read-only lock prevented create and update operations on the storage account.

### Task 5 – Modify the Resource Lock and Create a Storage Container

1. Navigated back to the **Settings** section.
2. Selected **Locks**.
3. Opened the existing Read-only resource lock.
4. Changed the Lock Type from **Read-only** to **Delete**.
5. Selected **OK** to save the changes.
6. Navigated back to **Data Storage → Containers**.
7. Selected **+ Container**.
8. Entered a container name.
9. Selected **Create**.
10. Verified that the storage container appeared in the container list.

The Delete lock allowed the container creation operation while preventing the storage account from being deleted.

### Task 6 – Delete the Storage Account

1. Navigated to the **Overview** section of the Storage Account.
2. Selected **Delete**.
3. Observed the notification indicating that the storage account could not be deleted because a Delete lock was applied.

This demonstrated how a Delete lock protects Azure resources from accidental deletion.

### Task 7 – Remove the Delete Lock and Delete the Storage Account

1. Navigated back to the Storage Account.
2. Opened **Settings → Locks**.
3. Selected the existing Delete lock.
4. Removed the resource lock by selecting **Delete**.
5. Returned to the Azure Portal home page.
6. Opened **Storage Accounts**.
7. Selected the storage account created for the exercise.
8. Selected **Delete**.
9. Entered the storage account name to confirm deletion.
10. Selected **Delete** to complete the operation.
11. Verified that the storage account was successfully deleted.

### Task 8 – Clean Up Resources

1. Navigated to **Resource Groups** in the Azure Portal.
2. Selected the `IntroAzureRG` resource group.
3. Selected **Delete Resource Group**.
4. Entered `IntroAzureRG` to confirm deletion.
5. Selected **Delete**.
6. Confirmed the deletion when prompted.

## Key Learnings

- Azure Resource Locks help protect resources from accidental deletion or modification.
- Azure provides two primary types of resource locks: Read-only and Delete.
- A Read-only lock prevents modification and deletion operations on the protected resource.
- A Delete lock allows users to read and modify resources but prevents deletion.
- Resource locks can be applied at different scopes, including subscriptions, resource groups, and individual resources.
- Resource locks help improve resource protection and governance in Azure.
- Locks must be removed before performing operations that they prevent.

## Status

- [ ] Resource Group created
- [ ] Storage Account created
- [ ] Read-only resource lock applied
- [ ] Container creation restriction verified
- [ ] Resource lock changed to Delete
- [ ] Storage Container created successfully
- [ ] Delete lock restriction verified
- [ ] Resource lock removed
- [ ] Storage Account deleted
- [ ] Resource Group cleaned up

---

**Reference:** [Microsoft Learn – Exercise 08: Configure Resource Locks](https://github.com/MicrosoftLearning/AZ-900-Microsoft-Azure-Fundamentals/blob/master/Instructions/Labs/08-exercise-configure-resource-lock.md)
