#Lab 02b – Manage Governance via Azure Policy

#Overview
This lab focuses on implementing Azure governance using Azure Policy, resource tags, and resource locks. It covers enforcing organizational standards and protecting Azure resources.

#Objectives
- Assign tags to Azure resources.
- Enforce resource tagging using Azure Policy.
- Update existing resources with tags.
- Configure resource locks.
- Understand Azure Policy compliance.

#Prerequisites
- Active Azure subscription.
- Access to Azure Portal.
- Appropriate permissions to create resource groups and assign policies.

#Implementation

#Task 1: Assign Tags via Azure Portal
1. Opened the Azure Portal.
2. Navigated to Resource Groups.
3. Created a resource group named az104-rg2.
4. Selected East US as the region.
5. Added a Cost Center tag with the value 000.
6. Created the resource group.

#Task 2: Enforce Tagging via Azure Policy
1. Opened Azure Policy.
2. Explored the available policy definitions.
3. Selected the Require a tag and its value on resources policy.
4. Assigned the policy to the az104-rg2 resource group.
5. Configured the Cost Center tag and value as policy parameters.
6. Reviewed the policy assignment.

#Task 3: Verify Policy Enforcement
1. Opened Storage Accounts.
2. Attempted to create a storage account without the required tag.
3. Reviewed the policy validation message.
4. Examined the policy enforcement result.

#Task 4: Update Existing Resources with Tags
Document the resource tagging and remediation steps performed according to the lab instructions.

#Task 5: Configure Resource Locks
Document the resource lock configuration and verify the protection applied to the resources.

#Results
Document the resource tagging, policy assignment, policy enforcement, and resource lock configurations completed.

#Key Learnings
- Azure tags help organize and identify resources.
- Azure Policy enforces organizational standards.
- Policy assignments apply rules to defined scopes.
- Compliance helps identify resources that do not meet requirements.
- Resource locks protect resources against accidental deletion or modification.

#Reference
https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_02b-Manage_Governance_via_Azure_Policy.md

#Screenshots
Add screenshots of the completed configurations.
