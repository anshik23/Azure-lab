# Lab 08 – Manage Virtual Machines

## Overview

This lab focuses on deploying, configuring, managing, and scaling Azure Virtual Machines. It explores availability zones, virtual machine resizing, managed disk configuration, Virtual Machine Scale Sets (VMSS), and autoscaling.

The lab demonstrates how Azure provides scalable computing resources and improves application availability through zone-resilient deployments and automated scaling.

## Objectives

- Deploy zone-resilient Azure Virtual Machines.
- Configure virtual machines across multiple availability zones.
- Manage virtual machine compute and storage scaling.
- Resize virtual machines to meet changing workload requirements.
- Create and configure Azure Virtual Machine Scale Sets.
- Configure autoscaling using CPU-based metrics.
- Create virtual machines using Azure PowerShell.
- Create virtual machines using Azure CLI.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- Basic understanding of Azure Virtual Machines.
- Familiarity with Azure networking and storage.
- Basic knowledge of PowerShell and Azure CLI.

## Implementation

### Task 1: Deploy Zone-Resilient Azure Virtual Machines

- Created a resource group named `az104-rg8`.
- Deployed two Azure Virtual Machines named `az104-vm1` and `az104-vm2`.
- Selected East US as the deployment region.
- Configured Availability Zones 1 and 2.
- Selected Windows Server 2025 Datacenter - x64 Gen2 as the operating system image.
- Selected Standard_D2s_v5 as the virtual machine size.
- Configured the local administrator username.
- Selected Premium SSD for the operating system disk.
- Configured networking without a load balancer.
- Disabled boot diagnostics.
- Verified successful deployment of both virtual machines.

### Task 2: Manage Compute and Storage Scaling for Virtual Machines

#### Virtual Machine Resizing

- Stopped and deallocated `az104-vm1`.
- Navigated to the Size configuration under Availability + scale.
- Resized the virtual machine from Standard_D2s_v5 to Standard_D4s_v5.
- Verified the updated compute configuration.

#### Managed Disk Configuration

- Created a new data disk named `vm1-disk1`.
- Selected Standard HDD as the initial storage type.
- Configured the disk size as 32 GiB.
- Attached the data disk to `az104-vm1`.
- Detached the disk to modify its storage performance configuration.
- Navigated to Azure Disks.
- Changed the disk storage type from Standard HDD to Standard SSD.
- Reattached the existing disk to `az104-vm1`.
- Verified the updated disk configuration.

### Task 3: Create and Configure Azure Virtual Machine Scale Sets

- Created a Virtual Machine Scale Set named `vmss1`.
- Selected East US as the deployment region.
- Configured Availability Zones 1, 2, and 3.
- Selected Uniform orchestration mode.
- Configured Windows Server 2025 Datacenter - x64 Gen2.
- Selected Standard_D2s_v5 as the VM instance size.
- Created a virtual network named `vmss-vnet`.
- Configured the address space as `10.82.0.0/20`.
- Created a subnet named `subnet0` with the address range `10.82.0.0/24`.
- Created a Network Security Group named `vmss1-nsg`.
- Added an inbound HTTP security rule named `allow-http`.
- Configured the rule to allow HTTP traffic on port 80.
- Enabled a public IP address for the network interface.
- Created an Azure Load Balancer named `vmss-lb`.
- Disabled boot diagnostics.
- Completed the Virtual Machine Scale Set deployment.
- Verified successful deployment.

### Task 4: Scale Azure Virtual Machine Scale Sets

#### Configure Scale-Out Rules

- Opened the `vmss1` Virtual Machine Scale Set.
- Navigated to Availability + scale and selected Scaling.
- Enabled Custom autoscale.
- Selected Scale based on metric.
- Configured a scale-out rule using Percentage CPU.
- Set the metric operator to Greater than.
- Configured the CPU threshold to 70%.
- Set the evaluation duration to 10 minutes.
- Configured the scaling operation to increase the instance count by 50%.
- Set the cooldown period to 5 minutes.

#### Configure Scale-In Rules

- Created a scale-in rule based on average CPU utilization.
- Configured the metric operator to Less than.
- Set the CPU threshold to 30%.
- Configured the scaling operation to decrease the instance count by 50%.
- Saved the autoscaling configuration.

#### Configure Instance Limits

- Set the minimum instance count to 2.
- Set the maximum instance count to 10.
- Set the default instance count to 2.
- Saved the autoscaling settings.
- Opened the Instances section to monitor VM Scale Set instances.

### Task 5: Create a Virtual Machine Using Azure PowerShell (Optional)

- Opened Azure Cloud Shell.
- Selected PowerShell as the shell environment.
- Used the `New-AzVM` command to create a virtual machine.
- Created a virtual machine named `myPSVM`.
- Used the existing resource group `az104-rg8`.
- Selected East US as the deployment region.
- Configured Windows Server 2019 Datacenter as the image.
- Selected Availability Zone 1.
- Used Standard_D2s_v5 as the VM size.
- Verified the VM deployment using `Get-AzVM`.
- Stopped and deallocated the virtual machine using `Stop-AzVM`.

### Task 6: Create a Virtual Machine Using Azure CLI (Optional)

- Opened Azure Cloud Shell.
- Selected Bash as the shell environment.
- Used the `az vm create` command to deploy a Linux virtual machine.
- Created a virtual machine named `myCLIVM`.
- Used Ubuntu Server 22.04 LTS as the operating system image.
- Configured the local administrator username as `localadmin`.
- Generated SSH keys for secure authentication.
- Verified the VM deployment using `az vm show`.
- Checked the virtual machine power state.
- Deallocated the virtual machine using `az vm deallocate`.

## Results

This section documents the successful deployment of zone-resilient virtual machines, compute and disk resizing, Virtual Machine Scale Set configuration, and CPU-based autoscaling.

Optional PowerShell and CLI deployment results can also be documented here if those tasks are completed.

## Key Learnings

- Azure Virtual Machines provide scalable, on-demand computing resources.
- Availability Zones improve application availability by distributing resources across physically separate datacenters.
- Virtual machines support vertical scaling by changing their compute size.
- Managed disks provide flexible storage performance and capacity options.
- Azure Virtual Machine Scale Sets simplify the deployment and management of multiple VM instances.
- Autoscaling automatically adjusts the number of instances based on workload demand.
- CPU-based scaling rules help maintain application performance while controlling resource usage.
- Azure PowerShell and Azure CLI provide alternative methods for deploying and managing virtual machines.

## Cleanup

Deleted the resource group `az104-rg8` after completing the lab to remove the associated virtual machines, disks, networking resources, and Virtual Machine Scale Set.

