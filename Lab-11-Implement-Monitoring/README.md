# Lab 11 – Implement Monitoring

## Overview

This lab focuses on implementing monitoring and alerting solutions in Microsoft Azure. It covers deploying monitoring infrastructure, collecting virtual machine performance data, querying logs using Azure Monitor Logs, configuring Action Groups, creating Activity Log alerts, and managing alert notifications using alert processing rules.

The lab demonstrates how Azure Monitor helps administrators track infrastructure changes, identify issues, and receive notifications about important resource activities.

## Objectives

- Deploy Azure monitoring infrastructure using an ARM template.
- Configure Azure Monitor Agent.
- Create and configure a Log Analytics Workspace.
- Verify monitoring data using Azure Monitor Logs.
- Execute Kusto Query Language (KQL) queries.
- Create and configure Azure Monitor Action Groups.
- Create Activity Log alert rules.
- Configure alert processing rules.
- Trigger and verify alerts through Azure resource activities.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- Basic understanding of Azure Virtual Machines.
- Familiarity with Azure Monitor and Log Analytics.
- Basic knowledge of Kusto Query Language (KQL).

## Implementation

### Task 1: Deploy the Lab Infrastructure

- Downloaded the provided ARM template named `az104-11-vm-template.json`.
- Opened the Azure Portal.
- Navigated to Deploy a Custom Template.
- Loaded the provided ARM template.
- Created a resource group named `az104-rg11`.
- Selected East US as the deployment region.
- Configured the administrator username as `localadmin`.
- Provided a secure administrator password.
- Deployed the virtual machine and supporting monitoring infrastructure.
- Verified successful deployment of the following resources:
  - Virtual Machine: `az104-vm0`
  - Log Analytics Workspace: `az104-law11`
  - Data Collection Rule: `az104-dcr11`
  - Virtual Network
  - Network Interface
  - Public IP Address
  - Network Security Group
  - Storage Account
- Verified that the Azure Monitor Windows Agent was successfully provisioned.
- Confirmed that the virtual machine was associated with the Data Collection Rule.

### Task 2: Verify Monitoring Data Using Azure Monitor Logs

- Opened the Log Analytics Workspace.
- Navigated to the Logs section.
- Opened the KQL query editor.
- Executed a Heartbeat query to verify virtual machine connectivity and monitoring data collection.
- Filtered the results using the virtual machine name `az104-vm0`.
- Verified heartbeat records and timestamps.
- Executed an InsightsMetrics query to retrieve virtual machine performance data.
- Filtered performance metrics using the `UtilizationPercentage` metric.
- Used KQL aggregation functions to calculate average CPU utilization.
- Visualized the collected performance data using a time chart.
- Verified that monitoring data was successfully collected.

### Task 3: Create an Azure Monitor Action Group

- Opened Azure Monitor in the Azure Portal.
- Navigated to Alerts and selected Action Groups.
- Created an Action Group named `Alert the operations team`.
- Configured the display name as `AlertOpsTeam`.
- Selected Global as the deployment region.
- Configured an email notification.
- Created a notification action named `VM was deleted`.
- Added the required email address.
- Reviewed and created the Action Group.
- Verified successful Action Group deployment.
- Confirmed receipt of the Action Group registration notification email.

### Task 4: Create an Activity Log Alert

- Opened Azure Monitor and navigated to Alerts.
- Selected Create Alert Rule.
- Configured the subscription as the alert scope.
- Selected Activity Log as the signal type.
- Configured the alert condition for Delete Virtual Machine.
- Selected the administrative operation `Microsoft.Compute/virtualMachines/delete`.
- Configured the Action Group as the notification action.
- Selected `Alert the operations team`.
- Created an alert rule named `VM was deleted`.
- Added the description `A VM in the subscription was deleted`.
- Selected Global as the alert region.
- Enabled the alert rule during creation.
- Verified that the alert rule was enabled.

### Task 5: Configure an Alert Processing Rule

- Opened Azure Monitor.
- Navigated to Alerts and selected Alert Processing Rules.
- Created a new alert processing rule.
- Configured the subscription as the scope.
- Selected Suppress Notifications as the rule setting.
- Configured a scheduled maintenance window.
- Set the start time to 10:00 PM.
- Set the end time to 7:00 AM the following day.
- Selected the appropriate local time zone.
- Named the rule `Planned Maintenance`.
- Added the description `Suppress notifications during planned maintenance.`
- Reviewed and created the alert processing rule.

### Task 6: Trigger and Verify the Alert

- Opened the Virtual Machines section in the Azure Portal.
- Located the virtual machine `az104-vm0`.
- Initiated the virtual machine deletion operation.
- Confirmed the deletion request.
- Waited for the deletion operation to complete.
- Monitored Azure notifications for the deletion status.
- Waited for the configured Action Group email notification.
- Opened Azure Monitor and navigated to Alerts.
- Verified that the `VM was deleted` alert was triggered.
- Opened the alert to review its scope, condition, operation name, status, and history.
- Confirmed that the monitoring and alerting configuration worked successfully.

## Results

Successfully deployed Azure monitoring infrastructure, configured Azure Monitor Agent and Log Analytics, verified heartbeat and virtual machine performance data using KQL, created Action Groups and Activity Log alerts, configured notification suppression during scheduled maintenance, and triggered an alert through a virtual machine deletion operation.

## Key Learnings

- Azure Monitor provides centralized monitoring and alerting capabilities for Azure resources.
- Log Analytics Workspaces store and analyze collected monitoring data.
- Azure Monitor Agent collects guest operating system monitoring information.
- Data Collection Rules define which monitoring data is collected and where it is sent.
- Kusto Query Language (KQL) helps administrators query and analyze monitoring data.
- Action Groups define notification methods and actions when alerts are triggered.
- Activity Log alerts monitor administrative operations performed on Azure resources.
- Alert Processing Rules help manage notification behavior during planned maintenance.
- Azure Monitor improves infrastructure visibility and helps administrators respond to important resource changes.

## Cleanup

Deleted the resource group `az104-rg11` after completing the lab to remove the associated monitoring resources and avoid unnecessary Azure charges.

