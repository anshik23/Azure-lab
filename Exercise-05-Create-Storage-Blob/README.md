
# Exercise 05 – Create a Storage Blob

## Overview

This exercise demonstrates how to create and configure Azure Storage Blob using the Azure Portal.

The objective is to create an Azure Storage Account, configure a Blob Container, upload a file, and modify the access level to allow anonymous access to the uploaded blob.

| Detail | Information |
|---|---|
| Certification | AZ-900: Microsoft Azure Fundamentals |
| Module | Describe the Core Architectural Components of Azure |
| Exercise | Create a Storage Blob |
| Estimated Duration | 15 minutes |
| Platform | Microsoft Azure Portal |
| Service | Azure Blob Storage |

## Objectives

- Create an Azure Storage Account.
- Configure storage account settings.
- Create a Blob Container.
- Upload a file to Azure Blob Storage.
- Understand private and anonymous blob access.
- Configure anonymous read access for blobs.
- Access an uploaded blob using its URL.

## Tasks Performed

### Task 1 – Create a Storage Account

1. Signed in to the Azure Portal.
2. Selected **Create a resource**.
3. Opened **Infrastructure Services**.
4. Located Storage Account and selected **Create**.
5. Configured the storage account using the following settings:

| Setting | Value |
|---|---|
| Subscription | Selected Azure Subscription |
| Resource Group | `IntroAzureRG` |
| Storage Account Name | Unique storage account name |
| Region | Same region as Resource Group |
| Performance | Standard |
| Redundancy | Locally Redundant Storage (LRS) |

6. Opened the **Advanced** tab.
7. Enabled **Allow enabling anonymous access on individual containers**.
8. Selected **Review + Create**.
9. Reviewed the configuration and completed the deployment.
10. Selected **Go to resource** after successful deployment.

### Task 2 – Create a Blob Container and Upload a File

1. Opened the newly created Storage Account.
2. Navigated to **Data Storage → Containers**.
3. Selected **+ Add Container**.
4. Configured the container using the following settings:

| Setting | Value |
|---|---|
| Name | Entered a container name |
| Anonymous Access Level | Private (no anonymous access) |

5. Selected **Create** to create the container.
6. Opened the newly created container.
7. Selected **Upload**.
8. Browsed and selected an image file from the local computer.
9. Selected **Upload** to upload the file.
10. Verified that the uploaded file appeared in the container.
11. Selected the uploaded blob to view its properties.
12. Copied the Blob URL and opened it in a new browser tab.
13. Verified that access was denied while the container was configured as private.

### Task 3 – Change the Access Level of the Blob

1. Returned to the Azure Portal.
2. Navigated back to the previously created container.
3. Selected **Change access level**.
4. Changed the Anonymous Access Level to:

   **Blob (anonymous read access for blobs only)**

5. Selected **OK** to apply the changes.
6. Returned to the browser tab containing the Blob URL.
7. Refreshed the page.
8. Verified that the uploaded image was accessible through its URL.

## Key Learnings

- Azure Blob Storage is used to store unstructured data such as images, documents, videos, and other files.
- A Storage Account provides a unique namespace for storing Azure data.
- Blob Containers organize blobs within a storage account.
- Private access prevents anonymous users from accessing stored blobs.
- Anonymous access can be configured at the container level when permitted by the storage account.
- Blob-level anonymous access allows public read access to individual blobs without exposing the entire container listing.
- Azure Blob URLs can be used to access publicly available blobs.

## Cleanup

To avoid unnecessary Azure charges, delete the resources after completing the exercise.

1. Open **Resource Groups** in the Azure Portal.
2. Select the `IntroAzureRG` resource group.
3. Select **Delete Resource Group**.
4. Enter `IntroAzureRG` to confirm deletion.
5. Select **Delete**.
6. Confirm the deletion when prompted.

**Important:** Only delete the resource group if it was created exclusively for this exercise and does not contain resources you need to retain.

## Status

- [ ] Storage Account created
- [ ] Storage Account configuration verified
- [ ] Blob Container created
- [ ] File uploaded successfully
- [ ] Private access tested
- [ ] Anonymous blob access configured
- [ ] Public blob URL verified
- [ ] Cleanup completed

---

**Reference:** [Microsoft Learn – Exercise 05: Create a Storage Blob](https://github.com/MicrosoftLearning/AZ-900-Microsoft-Azure-Fundamentals/blob/master/Instructions/Labs/05-exercise-create-storage-blob.md)
