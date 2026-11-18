# Lab 06 – Implement Network Traffic Management

## Overview

This lab focuses on implementing network traffic management in Microsoft Azure using Azure Load Balancer and Azure Application Gateway.

The lab demonstrates how to distribute incoming network traffic across multiple virtual machines using Layer 4 load balancing and Layer 7 application routing. It also covers backend pools, health probes, load balancing rules, and path-based routing.

## Objectives

- Deploy Azure infrastructure using an ARM template.
- Configure an Azure Standard Public Load Balancer.
- Create and configure frontend IP configurations.
- Configure backend address pools.
- Create health probes and load balancing rules.
- Configure an Azure Application Gateway.
- Implement path-based routing for images and videos.
- Verify backend health and application connectivity.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- Basic understanding of Virtual Networks and Virtual Machines.
- Familiarity with Azure networking concepts.
- Basic understanding of load balancing.

## Implementation

### Task 1: Deploy Infrastructure Using an ARM Template

- Accessed the Azure Portal.
- Opened the custom template deployment service.
- Loaded the provided ARM template and parameter files.
- Created a resource group named `az104-rg6`.
- Configured the virtual machine size and administrator password.
- Deployed the infrastructure containing one virtual network, three subnets, one Network Security Group, and three virtual machines.
- Verified successful deployment of the Azure resources.

### Task 2: Configure an Azure Load Balancer

- Created an Azure Standard Public Load Balancer named `az104-lb`.
- Configured the frontend IP configuration named `az104-fe`.
- Created a public IP address named `az104-lbpip`.
- Configured a backend pool named `az104-be`.
- Added the virtual machines `az104-06-vm0` and `az104-06-vm1` to the backend pool.
- Created a TCP health probe named `az104-hp`.
- Configured a load balancing rule named `az104-lbrule`.
- Set the frontend and backend ports to TCP port 80.
- Tested the public IP address to verify traffic distribution between the virtual machines.

### Task 3: Configure an Azure Application Gateway

- Added a dedicated subnet named `subnet-appgw` to the existing virtual network.
- Configured the subnet address range as `10.60.3.224/27`.
- Created an Azure Application Gateway named `az104-appgw`.
- Selected the Standard V2 tier.
- Configured two Application Gateway instances.
- Created a public frontend IP address named `az104-gwpip`.
- Configured the default backend pool named `az104-appgwbe`.
- Added two additional backend pools:
  - `az104-imagebe`
  - `az104-videobe`
- Configured the HTTP listener named `az104-listener`.
- Created a routing rule named `az104-gwrule`.
- Configured backend HTTP settings named `az104-http`.

### Path-Based Routing Configuration

Configured path-based routing to distribute incoming HTTP requests to different backend pools.

**Images Routing**
- Path: `/image/*`
- Target: `az104-imagebe`
- Backend settings: `az104-http`

**Videos Routing**
- Path: `/video/*`
- Target: `az104-videobe`
- Backend settings: `az104-http`

### Verification and Testing

- Verified that the Application Gateway deployment completed successfully.
- Checked backend health to ensure both backend servers were healthy.
- Retrieved the public frontend IP address.
- Tested the image routing endpoint using `/image/`.
- Tested the video routing endpoint using `/video/`.
- Verified that requests were directed to the appropriate backend virtual machines.

## Results

This section documents the successful configuration of Azure Load Balancer and Application Gateway, including traffic distribution and path-based routing verification.

## Key Learnings

- Azure Load Balancer operates at Layer 4 of the OSI model and distributes TCP and UDP traffic.
- Azure Application Gateway operates at Layer 7 and manages HTTP and HTTPS application traffic.
- Backend pools define the resources that receive incoming traffic.
- Health probes monitor the availability of backend resources.
- Load balancing rules control how traffic is distributed.
- Application Gateway supports path-based routing to direct requests to different backend services.
- Azure networking services help improve application availability, scalability, and traffic management.

## Cleanup

Deleted the lab resource group `az104-rg6` after completing the lab to avoid unnecessary Azure resource charges.
