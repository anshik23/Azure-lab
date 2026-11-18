# Lab 05 – Implement Intersite Connectivity

## Overview

This lab focuses on implementing connectivity between multiple Azure Virtual Networks. It covers the creation of virtual machines in separate virtual networks, configuring Virtual Network Peering, testing network connectivity using Azure Network Watcher and PowerShell, and implementing custom routes using User Defined Routes (UDRs).

## Objectives

- Create virtual machines in separate Azure Virtual Networks.
- Configure and understand Virtual Network Peering.
- Use Azure Network Watcher to troubleshoot connectivity.
- Test private network connectivity using Azure PowerShell.
- Create and configure custom routes using Route Tables.
- Understand traffic flow between interconnected virtual networks.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- Basic understanding of Virtual Networks and IP addressing.
- Familiarity with Azure Virtual Machines and networking concepts.

## Implementation

### Task 1: Create a Core Services Virtual Machine and Virtual Network

- Created a resource group named `az104-rg5`.
- Deployed a Windows Server virtual machine named `CoreServicesVM`.
- Created a virtual network named `CoreServicesVnet`.
- Configured the virtual network address space as `10.0.0.0/16`.
- Created a subnet named `Core` with the address range `10.0.0.0/24`.
- Configured the virtual machine networking and monitoring settings.

### Task 2: Create a Virtual Machine in a Different Virtual Network

- Deployed another Windows Server virtual machine named `ManufacturingVM`.
- Used the existing resource group `az104-rg5`.
- Created a separate virtual network named `ManufacturingVnet`.
- Configured the address space as `172.16.0.0/16`.
- Created a subnet named `Manufacturing` with the address range `172.16.0.0/24`.
- Configured the virtual machine networking settings.

### Task 3: Use Network Watcher to Test Connectivity

- Opened Azure Network Watcher.
- Navigated to Connection Troubleshoot.
- Selected `CoreServicesVM` as the source virtual machine.
- Selected `ManufacturingVM` as the destination virtual machine.
- Configured TCP connectivity testing using destination port `3389`.
- Executed the diagnostic test to examine connectivity between the two virtual networks.

### Task 4: Configure Virtual Network Peering

- Opened the `CoreServicesVnet` virtual network.
- Navigated to the Peerings section.
- Created bidirectional peering between `CoreServicesVnet` and `ManufacturingVnet`.
- Enabled virtual network access and forwarded traffic settings as specified.
- Verified that both peering connections reached the Connected state.

### Task 5: Test Connectivity Using Azure PowerShell

- Retrieved the private IP address of `CoreServicesVM`.
- Used the Run Command feature to execute PowerShell scripts.
- Enabled the Windows Firewall Remote Desktop rule on `CoreServicesVM`.
- Used `Test-NetConnection` from `ManufacturingVM` to test connectivity to `CoreServicesVM` over TCP port `3389`.
- Examined the connectivity test result after configuring Virtual Network Peering.

### Task 6: Create a Custom Route

- Added a new subnet named `perimeter` to `CoreServicesVnet`.
- Configured the subnet address range as `10.0.1.0/24`.
- Created a Route Table named `rt-CoreServices`.
- Enabled peering route propagation.
- Added a custom route named `PerimetertoCore`.
- Configured the destination address prefix as `10.0.0.0/16`.
- Selected Virtual Appliance as the next hop type.
- Configured the next hop IP address as `10.0.1.7`.
- Associated the route table with the `perimeter` subnet.

## Results

This section will document the final Azure resource configuration and connectivity results after completing all six tasks.

## Key Learnings

- Virtual Network Peering enables communication between separate Azure Virtual Networks.
- Network Watcher helps diagnose and troubleshoot network connectivity.
- Azure PowerShell provides command-line tools for testing network connectivity.
- Route Tables control network traffic using custom routing rules.
- User Defined Routes allow administrators to customize traffic flow within Azure Virtual Networks.
- Azure networking supports secure communication between logically separated network environments.

## Cleanup

Deleted the lab resources after completing the implementation to avoid unnecessary Azure costs.
