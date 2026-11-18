# Lab 09C – Implement Azure Kubernetes Service

## Overview

This lab focuses on implementing and managing Azure Kubernetes Service (AKS). It demonstrates how to deploy a managed Kubernetes cluster, run containerized applications using Kubernetes pods, and scale containerized workloads.

AKS simplifies Kubernetes cluster management by providing a managed control plane while allowing administrators to manage application workloads and worker nodes.

## Objectives

- Register the required Azure resource providers.
- Deploy an Azure Kubernetes Service cluster.
- Configure and connect to the Kubernetes cluster.
- Deploy containerized workloads using Kubernetes pods.
- Verify pod deployment and application availability.
- Scale containerized workloads within the AKS cluster.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- Basic understanding of Docker containers.
- Familiarity with Kubernetes architecture.
- Basic knowledge of Azure Cloud Shell and Kubernetes commands.

## Implementation

### Task 1: Register the Required Resource Providers

- Opened Azure Cloud Shell.
- Selected PowerShell as the shell environment.
- Registered the Microsoft.Kubernetes resource provider.
- Registered the Microsoft.KubernetesConfiguration resource provider.
- Verified the resource provider registration process.
- Closed Azure Cloud Shell after completing the registration.

### Task 2: Deploy an Azure Kubernetes Service Cluster

- Navigated to Kubernetes Services in the Azure Portal.
- Started the Kubernetes cluster creation process.
- Configured the following deployment settings:
  - Resource Group: `az104-09c-rg1`
  - Cluster Name: `az104-9c-aks1`
  - Region: Selected an available Azure region.
  - Cluster Preset: Dev/Test
  - Availability Zones: None
  - Scale Method: Manual
  - Initial Node Count: 1
- Selected System-assigned Managed Identity.
- Configured Kubernetes RBAC authentication.
- Reviewed the networking and node pool configurations.
- Validated and deployed the AKS cluster.
- Verified successful cluster deployment.

### Task 3: Deploy Pods into the Azure Kubernetes Service Cluster

- Connected to the deployed AKS cluster using Azure Cloud Shell.
- Retrieved the Kubernetes cluster credentials.
- Configured the Kubernetes command-line environment using `kubectl`.
- Verified connectivity to the AKS cluster.
- Created and deployed Kubernetes pods.
- Reviewed the deployed workloads.
- Used Kubernetes commands to inspect pod status.
- Verified that the pods reached the Running state.
- Examined the deployed containerized workloads.

### Task 4: Scale Containerized Workloads in the AKS Cluster

- Reviewed the existing Kubernetes workloads.
- Used Kubernetes scaling commands to increase the number of pod replicas.
- Verified the updated replica count.
- Monitored pod creation and deployment status.
- Scaled the workloads to demonstrate horizontal scaling.
- Verified that the requested number of pod replicas were running successfully.

## Results

Successfully registered the required Azure resource providers, deployed an Azure Kubernetes Service cluster, connected to the cluster using Kubernetes tools, deployed containerized workloads using pods, and demonstrated workload scaling.

## Key Learnings

- Azure Kubernetes Service provides a managed Kubernetes platform for deploying and managing containerized applications.
- Kubernetes uses clusters to organize and manage containerized workloads.
- Pods are the smallest deployable units in Kubernetes.
- Azure Cloud Shell provides access to Kubernetes management tools.
- The `kubectl` command-line tool is used to interact with Kubernetes clusters.
- Kubernetes RBAC helps manage access to cluster resources.
- Kubernetes workloads can be scaled by increasing or decreasing pod replicas.
- AKS simplifies container orchestration and application management.

## Cleanup

Deleted the resource group `az104-09c-rg1` after completing the lab to remove the AKS cluster and associated resources, helping avoid unnecessary Azure charges.
