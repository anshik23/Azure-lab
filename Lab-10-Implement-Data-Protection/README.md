# Lab 10 – Implement Data Protection

## Overview

This lab focuses on implementing data protection and disaster recovery solutions in Microsoft Azure. It covers deploying Azure Virtual Machines, configuring Recovery Services Vaults, enabling Azure Backup, monitoring backup operations, and configuring virtual machine replication using Azure Site Recovery.

The lab demonstrates how Azure protects virtual machines against accidental data loss and supports business continuity during regional failures.

## Objectives

- Deploy Azure infrastructure using an ARM template.
- Create and configure a Recovery Services Vault.
- Configure Azure Virtual Machine backup.
- Create backup policies and retention settings.
- Monitor Azure Backup jobs and diagnostic data.
- Configure diagnostic settings for backup monitoring.
- Enable virtual machine replication using Azure Site Recovery.
- Verify replication health and status.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- Basic understanding of Azure Virtual Machines.
- Familiarity with Azure Storage and networking.
- Basic understanding of backup and disaster recovery concepts.

## Implementation

### Task 1: Deploy Infrastructure Using an ARM Template

- Downloaded the provided ARM template and parameter files.
- Opened the Azure Portal.
- Navigated to Deploy a Custom Template.
- Loaded the infrastructure template and parameter file.
- Created a resource group named `az104-rg-region1`.
- Selected East US as the deployment region.
- Configured the administrator username as `localadmin`.
- Provided a secure administrator password.
- Deployed the virtual machine and supporting virtual network infrastructure.
- Verified successful deployment of the resources.

### Task 2: Create and Configure a Recovery Services Vault

- Navigated to Recovery Services Vaults in the Azure Portal.
- Created a Recovery Services Vault named `az104-rsv-region1`.
- Used the existing resource group `az104-rg-region1`.
- Selected East US as the deployment region.
- Configured the storage replication type as Geo-Redundant Storage (GRS).
- Reviewed the Cross Region Restore option.
- Reviewed the Soft Delete configuration.
- Verified the default soft delete retention period of 14 days.

### Task 3: Configure Azure Virtual Machine-Level Backup

- Opened the Recovery Services Vault.
- Navigated to the Backup section.
- Selected Azure as the workload location.
- Selected Virtual Machine as the backup workload.
- Selected the Standard backup policy type.
- Created a backup policy named `az104-backup`.
- Configured the backup frequency as Daily.
- Set the backup time to 12:00 AM.
- Selected the appropriate local time zone.
- Configured instant recovery snapshot retention for 2 days.
- Selected the deployed virtual machine `az104-10-vm0`.
- Enabled backup for the selected virtual machine.
- Reviewed the backup pre-check and last backup status.
- Initiated an on-demand backup using Backup Now.

### Task 4: Monitor Azure Backup

- Created an Azure Storage Account in the resource group `az104-rg-region1`.
- Selected East US as the deployment region.
- Opened the Recovery Services Vault.
- Navigated to Diagnostic Settings.
- Created a diagnostic setting named `Logs and Metrics to storage`.
- Enabled the following diagnostic categories:
  - Azure Backup Reporting Data
  - Addon Azure Backup Job Data
  - Addon Azure Backup Alert Data
  - Azure Site Recovery Jobs
  - Azure Site Recovery Events
- Configured the storage account as the diagnostic destination.
- Saved the diagnostic settings.
- Opened Backup Jobs in the Recovery Services Vault.
- Located the backup operation for the deployed virtual machine.
- Reviewed the backup job details and status.

### Task 5: Enable Virtual Machine Replication Using Azure Site Recovery

- Created a second Recovery Services Vault named `az104-rsv-region2`.
- Created a resource group named `az104-rg-region2`.
- Selected West US as the secondary deployment region.
- Opened the deployed virtual machine `az104-10-vm0`.
- Navigated to Backup + Disaster Recovery.
- Selected Disaster Recovery.
- Reviewed the target replication region.
- Configured the advanced replication settings.
- Created the required automation account.
- Reviewed and started the replication process.
- Waited for the initial replication to complete.
- Opened the secondary Recovery Services Vault.
- Navigated to Replicated Items.
- Verified the virtual machine replication health and synchronization status.
- Confirmed that the replication status reached Protected.

## Results

Successfully deployed Azure infrastructure, created and configured Recovery Services Vaults, enabled virtual machine backup, configured diagnostic settings for backup monitoring, and enabled cross-region virtual machine replication using Azure Site Recovery.

## Key Learnings

- Azure Backup provides data protection and recovery capabilities for Azure Virtual Machines.
- Recovery Services Vaults store backup data and recovery points.
- Backup policies define backup frequency, scheduling, and retention periods.
- Geo-Redundant Storage provides additional protection by replicating backup data to a secondary region.
- Soft Delete helps protect backup data from accidental or malicious deletion.
- Azure Monitor diagnostic settings help collect and export backup-related logs and metrics.
- Azure Site Recovery provides disaster recovery through virtual machine replication.
- Replication health and synchronization status help administrators monitor disaster recovery readiness.

## Cleanup

Removed the lab resources after completing the implementation to avoid unnecessary Azure charges.

The lab uses two resource groups:

- `az104-rg-region1`
- `az104-rg-region2`

Before deleting the resource groups, ensure that protected backup items and replication dependencies are properly removed and that the Recovery Services Vault deletion requirements are satisfied.
