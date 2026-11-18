# Lab 07 – Manage Azure Storage

## Overview

This lab focuses on creating, configuring, and securing Azure Storage services. It covers storage account configuration, Blob Storage, access tiers, lifecycle management, authentication, authorization, and Azure Files.

The lab also explores storage redundancy, immutable storage policies, Shared Access Signatures (SAS), and network-based access restrictions.

## Objectives

- Create and configure an Azure Storage Account.
- Configure Geo-Redundant Storage (GRS).
- Configure storage account network access.
- Implement Blob Storage containers and upload files.
- Configure immutable storage policies.
- Manage authentication and authorization using Azure RBAC.
- Generate Shared Access Signature (SAS) URLs.
- Create and configure Azure File Shares.
- Use Azure Storage Browser to manage files.
- Restrict storage access using Virtual Network Service Endpoints.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- Basic understanding of Azure Storage services.
- Familiarity with Azure networking and access control.
- A small sample file for testing blob and file uploads.

## Implementation

### Task 1: Create and Configure a Storage Account

- Created a resource group named `az104-rg7`.
- Created an Azure Storage Account with a globally unique name.
- Selected the East US region.
- Configured Standard performance.
- Selected Azure Blob Storage or Azure Data Lake Storage as the preferred storage type.
- Configured Geo-Redundant Storage (GRS).
- Enabled read access during regional unavailability (RA-GRS).
- Initially disabled public network access.
- Reviewed storage account data protection and encryption settings.
- Enabled public network access from selected networks.
- Added the client IPv4 address to the allowed network list.
- Reviewed storage redundancy configurations.
- Created a lifecycle management rule named `Movetocool`.
- Configured the rule to move base blobs to Cool storage after 30 days of inactivity.

### Task 2: Create and Configure Secure Blob Storage

#### Create a Blob Container

- Navigated to the Containers section of the storage account.
- Created a private blob container named `data`.
- Configured the container with no anonymous public access.
- Opened the container access policy settings.
- Created an immutable storage policy.
- Selected Time-based retention.
- Configured the retention period to 180 days.

#### Manage Blob Uploads

- Enabled storage account key access.
- Assigned the Storage Blob Data Contributor role to the user account.
- Assigned the Storage File Data Privileged Contributor role.
- Uploaded a sample file to the `data` container.
- Configured the uploaded file with the following settings:
  - Blob type: Block blob
  - Block size: 4 MiB
  - Access tier: Hot
  - Upload folder: `securitytest`
  - Encryption scope: Default container scope
- Verified the uploaded file and explored blob management options.
- Tested the blob URL in an InPrivate browser window.
- Verified that anonymous access was restricted.

#### Configure Limited Access Using SAS

- Opened the uploaded blob and selected Generate SAS.
- Selected User delegation key as the signing method.
- Configured Read permission.
- Set the SAS start and expiry dates.
- Generated the Blob SAS URL.
- Opened the SAS URL in an InPrivate browser window.
- Verified that the file could be accessed using the generated SAS URL.

### Task 3: Create and Configure Azure File Storage

#### Create an Azure File Share

- Navigated to Classic File Shares.
- Created a file share named `share1`.
- Selected Transaction Optimized as the access tier.
- Disabled backup for the lab configuration.
- Verified successful file share deployment.

#### Explore Storage Browser

- Opened Azure Storage Browser.
- Located the newly created `share1` file share.
- Explored directory creation and file management options.
- Configured Microsoft Entra user account authentication if required.
- Uploaded a sample file to the Azure File Share.
- Verified the uploaded file using Storage Browser.

#### Restrict Network Access to the Storage Account

- Created a Virtual Network named `vnet1` in `az104-rg7`.
- Configured a Microsoft.Storage service endpoint.
- Associated the service endpoint with the Default subnet.
- Returned to the storage account networking configuration.
- Added the `vnet1` virtual network and Default subnet to the allowed network list.
- Removed the previously allowed client IPv4 address.
- Saved the network access configuration.
- Refreshed Storage Browser and tested access restrictions.
- Verified that access from outside the permitted virtual network was denied.

## Results

This section documents the successful creation and configuration of the Azure Storage Account, private Blob Storage container, immutable retention policy, SAS-based access, Azure File Share, and Virtual Network service endpoint.

## Key Learnings

- Azure Storage Accounts provide a centralized platform for managing blobs, files, queues, and tables.
- Geo-Redundant Storage (GRS) maintains replicated data in a secondary region.
- Lifecycle management automatically moves data between storage tiers based on defined conditions.
- Blob containers organize unstructured data.
- Immutable storage policies protect data against modification or deletion during the retention period.
- Azure RBAC provides role-based access to storage resources.
- Shared Access Signatures provide controlled and time-limited access to storage data.
- Azure Files provides managed cloud file shares.
- Azure Storage Browser simplifies storage data management.
- Virtual Network Service Endpoints help restrict storage account access to selected virtual networks.

## Cleanup

Deleted the resource group `az104-rg7` after completing the lab to remove the associated Azure resources and avoid unnecessary charges.
