# Exercise 03 – Create a Virtual Machine and Configure It as a Web Host

## Overview

This exercise demonstrates how to deploy an Azure Virtual Machine and configure it to host a basic website.

It introduces the fundamentals of virtual machine deployment, network connectivity, remote access, and hosting a web application on Azure.

| Detail | Information |
|---|---|
| Certification | AZ-900: Microsoft Azure Fundamentals |
| Exercise | Create a Virtual Machine and Configure It as a Web Host |
| Platform | Microsoft Azure |
| Service | Azure Virtual Machines |

## Objectives

- Create and configure an Azure Virtual Machine.
- Understand virtual machine networking and connectivity.
- Configure a virtual machine to host a website.
- Access the hosted website through a browser.
- Explore the resources associated with a virtual machine.

## Tasks Performed

### Task 1 – Create an Azure Virtual Machine

1. Signed in to the [Azure Portal](https://portal.azure.com/).
2. Opened **Virtual Machines**.
3. Selected **Create** and then **Azure Virtual Machine**.
4. Configured the required virtual machine settings.
5. Selected the appropriate operating system image and VM size.
6. Configured authentication credentials.
7. Reviewed the networking settings.
8. Selected **Review + Create**.
9. Selected **Create** and waited for deployment to finish.

### Task 2 – Configure the Virtual Machine

1. Opened the deployed Virtual Machine.
2. Reviewed its configuration and networking details.
3. Connected to the VM using the appropriate remote access method.
4. Prepared the virtual machine to host a website.
5. Installed and configured the required web server components according to the exercise instructions.

### Task 3 – Verify the Website

1. Retrieved the VM's public IP address.
2. Opened a web browser.
3. Entered the public IP address.
4. Verified that the hosted website was accessible.

## Key Learnings

- Azure Virtual Machines provide Infrastructure as a Service (IaaS).
- Virtual machines allow users to control the operating system and installed software.
- Network Security Groups control inbound and outbound network traffic.
- Public IP addresses can provide internet connectivity to Azure resources.
- A virtual machine can be configured to host websites and applications.

## Screenshots

Screenshots will be added after completing the practical exercise.

Suggested screenshots:

1. Virtual Machine creation – `01-vm-creation.png`
2. VM configuration – `02-vm-configuration.png`
3. Successful deployment – `03-vm-deployment.png`
4. VM networking details – `04-vm-networking.png`
5. Website running in browser – `05-hosted-website.png`

## Cleanup

After completing the exercise:

1. Open **Virtual Machines** in the Azure Portal.
2. Select the VM created for this exercise.
3. Delete the VM and its associated resources when they are no longer needed.
4. Verify that related resources such as disks, public IP addresses, and network interfaces are also removed if they are not being reused.

**Important:** Azure Virtual Machines and associated resources may incur charges. Delete unused resources after completing the exercise.

## Status

- [ ] Virtual Machine created
- [ ] VM configured
- [ ] Web server installed and configured
- [ ] Website verified in browser
- [ ] Screenshots added
- [ ] Cleanup completed

---

**Reference:** [Microsoft Learn – Exercise 03: Create a Virtual Machine](https://microsoftlearning.github.io/AZ-900-Microsoft-Azure-Fundamentals/Instructions/Labs/03-exercise-create-azure-virtual-machine.html)
