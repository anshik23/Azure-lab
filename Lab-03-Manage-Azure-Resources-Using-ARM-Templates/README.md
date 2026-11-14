# Lab 03 – Manage Azure Resources by Using Azure Resource Manager Templates

## Overview

This lab focuses on automating Azure resource deployments using Azure Resource Manager (ARM) templates and Bicep. It covers creating, editing, and deploying templates through the Azure Portal, Azure PowerShell, and Azure CLI.

## Objectives

- Create an Azure Resource Manager template.
- Edit an ARM template and redeploy Azure resources.
- Configure Azure Cloud Shell.
- Deploy ARM templates using Azure PowerShell.
- Deploy ARM templates using Azure CLI.
- Deploy Azure resources using Bicep.

## Prerequisites

- Active Azure subscription.
- Access to Azure Portal.
- Appropriate permissions to create and manage Azure resources.
- Access to Azure Cloud Shell.
- Basic understanding of JSON, PowerShell, and Azure CLI.

## Implementation

### Task 1: Create an Azure Resource Manager Template

1. Signed in to the Azure Portal.
2. Navigated to Disks and selected Create.
3. Created a managed disk with the following configuration:
   - Resource Group: az104-rg3
   - Disk Name: az104-disk1
   - Region: East US
   - Availability Zone: No infrastructure redundancy required
   - Source Type: None
   - Performance: Standard HDD
   - Size: 32 GiB
4. Completed the deployment.
5. Opened the created managed disk.
6. Navigated to Automation and selected Export template.
7. Reviewed the Template and Parameters files.
8. Downloaded both JSON files for future deployments.

### Task 2: Edit an ARM Template and Redeploy

1. Opened Deploy a custom template in the Azure Portal.
2. Selected Build your own template in the editor.
3. Uploaded the previously downloaded template.json file.
4. Modified the disk resource name from az104-disk1 to az104-disk2.
5. Updated the template parameter name as specified in the instructions.
6. Uploaded and modified the parameters.json file.
7. Configured the custom deployment settings.
8. Deployed the updated template to az104-rg3.
9. Verified the creation of az104-disk2.
10. Reviewed the deployment details in the resource group's Deployments section.

### Task 3: Configure Cloud Shell and Deploy a Template Using PowerShell

1. Opened Azure Cloud Shell from the Azure Portal.
2. Selected PowerShell as the shell environment.
3. Uploaded the template and parameters JSON files.
4. Opened the template file using the Cloud Shell editor.
5. Modified the disk name to az104-disk3.
6. Verified the active Azure subscription context.
7. Executed the following deployment command:

```powershell
New-AzResourceGroupDeployment -ResourceGroupName az104-rg3 -TemplateFile template.json -TemplateParameterFile parameters.json
```

8. Verified that the deployment provisioning state was Succeeded.
9. Confirmed the disk creation using:

```powershell
Get-AzDisk | ft Name,ResourceGroupName,Location,DiskSizeGb,ProvisioningState
```

### Task 4: Deploy a Template Using Azure CLI

1. Switched Azure Cloud Shell from PowerShell to Bash.
2. Verified the active subscription using:

```bash
az account show
```

3. Checked the availability of the template files using:

```bash
ls
```

4. Opened the template JSON file in the Cloud Shell editor.
5. Modified the disk name to az104-disk4.
6. Saved the changes.
7. Executed the following deployment command:

```bash
az deployment group create --resource-group az104-rg3 --template-file template.json --parameters parameters.json
```

8. Verified that the deployment completed successfully.
9. Confirmed the disk creation using:

```bash
az disk list --resource-group az104-rg3 --output table
```

### Task 5: Deploy a Resource Using Azure Bicep

1. Located the azuredeploydisk.bicep file in the Lab03 folder.
2. Opened Azure Cloud Shell in Bash mode.
3. Uploaded the Bicep file to Cloud Shell.
4. Opened the file using the Cloud Shell editor.
5. Modified the following configuration values:
   - Managed Disk Name: az104-disk5
   - Disk Size: 32 GiB
   - SKU Name: StandardSSD_LRS
6. Saved the changes.
7. Deployed the Bicep template using:

```bash
az deployment group create --resource-group az104-rg3 --template-file azuredeploydisk.bicep
```

8. Verified the deployment.
9. Confirmed the managed disk creation using:

```bash
az disk list --resource-group az104-rg3 --output table
```

## Results

Document the managed disks and deployments successfully created using:

- Azure Portal and exported ARM templates.
- Edited ARM templates through custom deployment.
- Azure PowerShell.
- Azure CLI.
- Azure Bicep.

## Key Learnings

- ARM templates enable infrastructure deployment using declarative JSON files.
- Template parameters allow values to be supplied separately from the template.
- ARM templates can be deployed through the Azure Portal, PowerShell, and Azure CLI.
- Azure Cloud Shell provides browser-based access to PowerShell and Bash.
- Azure Bicep provides a simplified declarative syntax for deploying Azure resources.
- Deployment history helps review resource deployment operations.

## Cleanup Resources

After completing the lab, remove the resource group az104-rg3 if it is no longer required.

Azure CLI command:

```bash
az group delete --name az104-rg3
```

Azure PowerShell command:

```powershell
Remove-AzResourceGroup -Name az104-rg3
```

## Reference

[Microsoft AZ-104 – Lab 03: Manage Azure Resources by Using ARM Templates](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_03b-Manage_Azure_Resources_by_Using_ARM_Templates.md)

## Screenshots

Add screenshots of the completed deployments, managed disks, PowerShell commands, Azure CLI commands, and Bicep deployment.
