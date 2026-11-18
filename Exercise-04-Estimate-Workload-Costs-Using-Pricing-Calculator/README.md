
# Exercise 06 – Estimate Workload Costs Using Pricing Calculator

## Overview

This exercise demonstrates how to use the Azure Pricing Calculator to estimate the cost of running different Azure workloads.

The objective is to understand how Azure services contribute to overall cloud costs by selecting and configuring services such as Virtual Machines, Azure SQL Database, and Application Gateway.

| Detail | Information |
|---|---|
| Certification | AZ-900: Microsoft Azure Fundamentals |
| Module | Describe Cost Management in Azure |
| Exercise | Estimate Workload Costs Using Pricing Calculator |
| Estimated Duration | 15 minutes |
| Platform | Microsoft Azure Pricing Calculator |
| Service | Azure Cost Management |

## Objectives

- Understand the purpose of the Azure Pricing Calculator.
- Identify Azure services required for a web application.
- Add Azure services to a pricing estimate.
- Configure Virtual Machines, Azure SQL Database, and Application Gateway.
- Estimate the monthly cost of an Azure workload.
- Save, export, and share pricing estimates.

## Tasks Performed

### Task 1 – Define Workload Requirements

1. Reviewed the requirements for a basic web application hosted in an organization's datacenter.
2. Identified the Azure services required to migrate the application to Azure.
3. Selected the following services:

| Requirement | Azure Service |
|---|---|
| Application hosting | Azure Virtual Machines |
| Load balancing | Azure Application Gateway |
| Database management | Azure SQL Database |

4. Reviewed the workload requirements:
   - The application is used internally and is not accessible to customers.
   - The application does not require extensive computing power.
   - Virtual Machines and the database run continuously for 730 hours per month.
   - Network traffic is approximately 1 TB per month.
   - The database requires no more than 32 GB of storage.

### Task 2 – Explore the Azure Pricing Calculator

1. Opened the [Azure Pricing Calculator](https://azure.microsoft.com/pricing/calculator/).
2. Explored the available tabs:
   - Products
   - Example Scenarios
   - Saved Estimates
   - FAQs
3. Reviewed how Azure services can be selected and configured to calculate estimated costs.

### Task 3 – Add Azure Services to the Estimate

1. Opened the Products tab.
2. Added the following services to the pricing estimate:

| Category | Service |
|---|---|
| Compute | Virtual Machines |
| Databases | Azure SQL Database |
| Networking | Application Gateway |

3. Scrolled down to review the selected services and their default configurations.

### Task 4 – Configure Azure Services

**1. Virtual Machines**

Configured the following settings:

| Setting | Value |
|---|---|
| Region | West US |
| Operating System | Windows |
| Type | OS Only |
| Tier | Standard |
| Instance | D2s v5 |
| Virtual Machines | 2 x 730 Hours |

**2. Azure SQL Database**

Configured the following settings:

| Setting | Value |
|---|---|
| Region | West US |
| Type | Single Database |
| Backup Storage Tier | RA-GRS |
| Purchase Model | vCore |
| Service Tier | General Purpose |
| Compute Tier | Provisioned |
| Generation | Gen 5 |
| Instance | 8 vCore |

**3. Application Gateway**

Configured the following settings:

| Setting | Value |
|---|---|
| Region | West US |
| Tier | Web Application Firewall |
| Size | Medium |
| Gateway Hours | 2 x 730 Hours |
| Data Processed | 1 TB |
| Outbound Data Transfer | 5 GB |

4. Reviewed the configuration of all selected services.

### Task 5 – Review, Save, and Share the Estimate

1. Scrolled to the bottom of the Pricing Calculator.
2. Reviewed the total estimated cost of the Azure workload.
3. Explored the available currency options.
4. Reviewed the following options:
   - Export – Download the estimate as an Excel document.
   - Save or Save As – Store the estimate for future reference.
   - Share – Generate a URL to share the estimate with others.
5. Understood how changes in workload requirements can affect the estimated Azure cost.

## Key Learnings

- Azure Pricing Calculator helps estimate the cost of Azure services before deployment.
- Different Azure services have different pricing models.
- Virtual Machine costs depend on factors such as region, operating system, instance size, and running hours.
- Azure SQL Database pricing depends on compute capacity, service tier, and storage requirements.
- Application Gateway pricing depends on its tier, size, operating hours, and data processing.
- Azure workload costs can be estimated and compared before selecting a deployment configuration.
- Pricing estimates can be saved, exported, and shared.

## Important Note

The Azure Pricing Calculator provides estimates for planning purposes only. The actual cost may vary depending on usage, configuration, region, and applicable pricing changes.

## Status

- [ ] Workload requirements identified
- [ ] Azure Pricing Calculator explored
- [ ] Virtual Machines added and configured
- [ ] Azure SQL Database added and configured
- [ ] Application Gateway added and configured
- [ ] Estimated workload cost reviewed
- [ ] Estimate saved or exported

---

**Reference:** [Microsoft Learn – Exercise 06: Estimate Workload Costs Using the Pricing Calculator](https://github.com/MicrosoftLearning/AZ-900-Microsoft-Azure-Fundamentals/blob/master/Instructions/Labs/06-exercise-estimate-workload-costs-use-pricing-calculator.md)
