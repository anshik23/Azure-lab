# Lab 04 – Implement Virtual Networking

## Overview

This lab focuses on implementing virtual networking in Microsoft Azure. It covers creating virtual networks and subnets, configuring Network Security Groups (NSGs) and Application Security Groups (ASGs), and setting up public and private Azure DNS zones.

## Objectives

- Create virtual networks and subnets using the Azure Portal.
- Deploy virtual networks using ARM templates.
- Configure Application Security Groups.
- Create and configure Network Security Groups.
- Configure inbound and outbound security rules.
- Create public and private Azure DNS zones.
- Configure DNS records and virtual network links.

## Prerequisites

- Active Azure subscription.
- Access to Azure Portal.
- Appropriate permissions to create and manage networking resources.
- Basic understanding of IP addressing and subnetting.

## Implementation

### Task 1: Create a Virtual Network with Subnets Using the Portal

1. Signed in to the Azure Portal.
2. Navigated to Virtual Networks and selected Create.
3. Created a virtual network with the following configuration:
   - Resource Group: az104-rg4
   - Name: CoreServicesVnet
   - Region: East US
   - IPv4 Address Space: 10.20.0.0/16
4. Created the following subnets:

| Subnet Name | Starting Address | Size |
|---|---|---|
| SharedServicesSubnet | 10.20.10.0 | /24 |
| DatabaseSubnet | 10.20.20.0 | /24 |

5. Removed the default subnet.
6. Reviewed the configuration and created the virtual network.
7. Verified the address space and subnet configuration.
8. Exported the ARM template and downloaded the template and parameters JSON files.

### Task 2: Create a Virtual Network and Subnets Using a Template

1. Opened the exported template.json file.
2. Modified the virtual network configuration:
   - Virtual Network Name: ManufacturingVnet
   - Address Space: 10.30.0.0
3. Updated the subnet configurations:

| Original Subnet | New Subnet | Address Range |
|---|---|---|
| SharedServicesSubnet | SensorSubnet1 | 10.30.20.0/24 |
| DatabaseSubnet | SensorSubnet2 | 10.30.21.0/24 |

4. Saved the modified template.json file.
5. Opened the parameters.json file.
6. Replaced CoreServicesVnet with ManufacturingVnet.
7. Saved the updated parameters file.
8. Opened Deploy a custom template in the Azure Portal.
9. Uploaded the modified template and parameters files.
10. Selected the resource group az104-rg4.
11. Reviewed the configuration and deployed the template.
12. Verified the creation of ManufacturingVnet and its associated subnets.

### Task 3: Create and Configure Communication Between an Application Security Group and a Network Security Group

#### Create an Application Security Group

1. Opened Application Security Groups in the Azure Portal.
2. Created an Application Security Group with the following configuration:
   - Name: asg-web
   - Resource Group: az104-rg4
   - Region: East US

#### Create a Network Security Group

1. Opened Network Security Groups.
2. Created a Network Security Group with the following configuration:
   - Name: myNSGSecure
   - Resource Group: az104-rg4
   - Region: East US
3. Opened the NSG and navigated to Subnets.
4. Associated the NSG with:
   - Virtual Network: CoreServicesVnet
   - Subnet: SharedServicesSubnet

#### Configure an Inbound Security Rule

1. Opened Inbound Security Rules.
2. Added a new inbound security rule with the following configuration:

| Setting | Value |
|---|---|
| Source | Application security group |
| Source ASG | asg-web |
| Source Port Ranges | * |
| Destination | Any |
| Service | Custom |
| Destination Port Ranges | 80,443 |
| Protocol | TCP |
| Action | Allow |
| Priority | 100 |
| Name | AllowASG |

3. Saved the inbound security rule.

#### Configure an Outbound Security Rule

1. Opened Outbound Security Rules.
2. Added a new outbound rule with the following configuration:

| Setting | Value |
|---|---|
| Source | Any |
| Source Port Ranges | * |
| Destination | Service tag |
| Destination Service Tag | Internet |
| Service | Custom |
| Destination Port Ranges | * |
| Protocol | Any |
| Action | Deny |
| Priority | 4096 |
| Name | DenyInternetOutbound |

3. Saved the outbound security rule.

### Task 4: Configure Public and Private Azure DNS Zones

#### Configure a Public DNS Zone

1. Opened DNS Zones in the Azure Portal.
2. Created a public DNS zone with the following configuration:
   - Resource Group: az104-rg4
   - Domain Name: contosoxyz104.com
   - Region: East US
3. Opened the DNS zone and reviewed the assigned name servers.
4. Created an A record set with the following configuration:

| Setting | Value |
|---|---|
| Name | www |
| Type | A |
| Alias Record Set | No |
| TTL | 1 |
| IP Address | 10.1.1.4 |

5. Verified that the www record was created.
6. Used the nslookup command with the assigned DNS name server to verify name resolution.

#### Configure a Private DNS Zone

1. Opened Private DNS Zones in the Azure Portal.
2. Created a private DNS zone with the following configuration:
   - Resource Group: az104-rg4
   - Name: private.contosoxyz104.com
   - Region: East US
3. Opened the private DNS zone.
4. Created a virtual network link with the following configuration:

| Setting | Value |
|---|---|
| Link Name | manufacturing-link |
| Virtual Network | ManufacturingVnet |

5. Created an A record set with the following configuration:

| Setting | Value |
|---|---|
| Name | sensorvm |
| Type | A |
| TTL | 1 |
| IP Address | 10.1.1.4 |

6. Reviewed the private DNS zone and its virtual network link.

## Results

Document the virtual networks, subnets, security groups, security rules, and DNS zones successfully configured during the lab.

## Key Learnings

- Virtual networks provide isolated networking environments in Azure.
- Subnets divide virtual networks into smaller address ranges.
- Non-overlapping IP address ranges help prevent networking conflicts.
- Network Security Groups control inbound and outbound network traffic.
- Application Security Groups simplify the application of network security rules to groups of resources.
- Public Azure DNS zones provide name resolution for internet-facing domains.
- Private DNS zones provide name resolution within linked virtual networks.
- DNS records map hostnames to IP addresses.

## Cleanup Resources

After completing the lab, delete the resource group az104-rg4 if it is no longer required.

Azure PowerShell:

```powershell
Remove-AzResourceGroup -Name az104-rg4
```

Azure CLI:

```bash
az group delete --name az104-rg4
```

## Reference

[Microsoft AZ-104 – Lab 04: Implement Virtual Networking](https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/blob/master/Instructions/Labs/LAB_04-Implement_Virtual_Networking.md)

## Screenshots

Add screenshots of the completed virtual networks, subnet configurations, security group rules, and DNS zone configurations.
