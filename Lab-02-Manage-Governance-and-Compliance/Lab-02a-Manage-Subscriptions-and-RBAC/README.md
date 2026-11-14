# Lab 02a – Manage Subscriptions and RBAC

## Overview
This lab focuses on managing Azure subscriptions, management groups, and Role-Based Access Control (RBAC). It covers assigning built-in roles, creating custom roles, and monitoring role assignments.

## Objectives
- Create and manage Azure management groups.
- Understand Azure built-in roles.
- Assign RBAC roles to users and groups.
- Create custom RBAC roles.
- Monitor role assignments using Activity Log.

## Prerequisites
- Active Azure subscription.
- Access to Azure Portal.
- Appropriate permissions to manage management groups and role assignments.

## Implementation

### Task 1: Implement Management Groups
1. Accessed Microsoft Entra ID and reviewed Azure resource access management properties.
2. Opened Management Groups.
3. Created a management group named az104-mg1.
4. Verified the management group.

### Task 2: Review and Assign a Built-in Azure Role
1. Opened the management group's Access Control (IAM) section.
2. Reviewed available built-in Azure roles.
3. Selected the Virtual Machine Contributor role.
4. Assigned the role to the Help Desk group.
5. Verified the role assignment.

### Task 3: Create a Custom RBAC Role
1. Opened Access Control (IAM).
2. Selected Add Custom Role.
3. Created a custom role named Custom Support Request.
4. Cloned the Support Request Contributor role.
5. Excluded the permission for registering the Support Resource Provider.
6. Reviewed the role permissions and assignable scope.
7. Created the custom role.

### Task 4: Monitor Role Assignments
1. Opened the management group's Activity Log.
2. Reviewed role assignment activities.
3. Examined the available activity information.

## Results
Document the management group, role assignments, and custom RBAC role successfully implemented.

## Key Learnings
- Management groups organize Azure subscriptions.
- RBAC controls access through roles and scopes.
- Built-in roles provide predefined permissions.
- Custom roles support specific permission requirements.
- Activity Log helps monitor administrative activities.

## Reference
https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_02a_Manage_Subscriptions_and_RBAC_Entra.html

## Screenshots
Add screenshots of the completed configurations.
