# Lab 01 – Manage Microsoft Entra ID Identities

## Overview

This lab focuses on managing identities in Microsoft Entra ID. It covers creating user accounts, inviting external users, creating security groups, and managing group membership and ownership.

## Objectives

- Explore Microsoft Entra ID and tenant management.
- Create and configure user accounts.
- Invite external guest users.
- Create security groups.
- Add users to groups and assign group owners.
- Understand assigned and dynamic group membership.

## Prerequisites

- An active Azure subscription.
- Access to the Azure Portal.
- Appropriate permissions to manage users and groups in Microsoft Entra ID.
- An accessible external email address for guest invitation.

## Implementation

### Task 1: Create and Configure User Accounts

1. Signed in to the Azure Portal.
2. Opened Microsoft Entra ID.
3. Explored the tenant overview and Manage tenants section.
4. Navigated to Users and created a new user with the following details:
   - Username: az104-user1
   - Display Name: az104-user1
   - Job Title: IT Lab Administrator
   - Department: IT
   - Usage Location: United States
5. Enabled the account and configured an automatically generated password.
6. Verified that the user account was successfully created.

### Task 2: Invite an External User

1. Navigated to Users and selected Invite an external user.
2. Entered the external email address and display name.
3. Added the invitation message.
4. Configured the guest user's job title, department, and usage location.
5. Sent the invitation.
6. Verified that the guest account appeared in the Users list.

### Task 3: Create a Security Group

1. Navigated to Microsoft Entra ID → Groups.
2. Selected New group.
3. Created a security group with the following configuration:
   - Group Name: IT Lab Administrators
   - Description: Administrators that manage the IT lab
   - Group Type: Security
   - Membership Type: Assigned
4. Assigned my account as the group owner.
5. Added az104-user1 and the invited guest account as group members.
6. Created the group and verified its configuration.

## Results

Successfully implemented user and group management in Microsoft Entra ID.

- Created a new user account.
- Invited an external guest user.
- Created a security group.
- Assigned a group owner.
- Added users to the group.
- Verified group membership and ownership.

## Key Learnings

- Microsoft Entra ID provides identity and access management capabilities.
- User accounts represent individuals within an organization's directory.
- Guest accounts allow external users to collaborate.
- Security groups simplify access and user management.
- Assigned membership requires administrators to manage group members manually.
- Dynamic membership automatically updates based on configured rules and requires an appropriate Entra ID Premium licence.

## Reference

[Microsoft AZ-104 – Lab 01: Manage Microsoft Entra ID Identities](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_01-Manage_Entra_ID_Identities.md)

## Screenshots

Screenshots of the completed configurations are available in the Screenshots folder.
