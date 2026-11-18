# Lab 09A – Implement Web Apps

## Overview

This lab focuses on implementing and managing Azure Web Apps using Azure App Service. It covers creating a web application, configuring deployment slots, connecting an external GitHub repository, swapping staging and production environments, and configuring autoscaling.

## Objectives

- Create and configure an Azure Web App.
- Deploy a PHP application using an external GitHub repository.
- Create and configure deployment slots.
- Configure web app deployment settings.
- Swap staging and production deployment slots.
- Configure automatic scaling for an Azure Web App.
- Perform load testing and monitor application performance.

## Prerequisites

- An active Microsoft Azure subscription.
- Access to the Azure Portal.
- A GitHub account or access to a public GitHub repository.
- Basic understanding of Azure App Service and web applications.

## Implementation

### Task 1: Create and Configure an Azure Web App

- Created a resource group named `az104-rg9`.
- Created an Azure Web App using Azure App Services.
- Configured a globally unique web application name.
- Selected Code as the publishing method.
- Selected PHP 8.2 as the runtime stack.
- Selected Linux as the operating system.
- Selected East US as the deployment region.
- Configured the Premium V3 P1V3 App Service Plan.
- Reviewed and deployed the web application.
- Verified successful deployment through the Azure Portal.

### Task 2: Create and Configure a Deployment Slot

- Opened the newly created Azure Web App.
- Accessed the Deployment Slots section.
- Created a deployment slot named `staging`.
- Selected Do not clone settings.
- Verified the availability of both Production and Staging slots.
- Reviewed the separate default domain URLs assigned to each slot.

### Task 3: Configure Web App Deployment Settings

- Opened the staging deployment slot.
- Navigated to Configuration and General Settings.
- Enabled SCM Basic Authentication Publishing Credentials.
- Opened Deployment Center.
- Selected External Git as the deployment source.
- Connected the application to the GitHub repository:

  `https://github.com/Azure-Samples/php-docs-hello-world`

- Configured the deployment branch as `master`.
- Saved the deployment configuration.
- Opened the staging application URL.
- Verified successful deployment by checking the Hello World application.

### Task 4: Swap Deployment Slots

- Navigated to the Deployment Slots section.
- Selected the Swap operation.
- Reviewed the source and target deployment settings.
- Started the swap operation between Staging and Production.
- Waited for the swap operation to complete.
- Opened the Production Web App URL.
- Verified that the production application displayed the Hello World page.

### Task 5: Configure and Test Autoscaling

- Opened the production Web App.
- Navigated to the App Service Plan Scaling section.
- Selected Automatic scaling.
- Configured Maximum Burst to 2.
- Set Minimum Instances to 1.
- Configured the staging slot minimum elastic instance count using Azure CLI where required.
- Saved the autoscaling configuration.
- Opened Diagnose and Solve Problems.
- Created an Azure Load Testing resource.
- Configured an HTTP request using the production Web App URL.
- Started the load test.
- Monitored virtual users, response time, and requests per second.
- Stopped the load test after reviewing the performance metrics.

## Results

Successfully created and configured an Azure Web App, deployed an application from GitHub, configured staging and production deployment slots, performed a slot swap, and tested automatic scaling using Azure Load Testing.

## Key Learnings

- Azure App Service provides a managed platform for hosting web applications.
- App Service Plans determine the compute resources and features available to web applications.
- Deployment slots provide separate environments for testing application updates before production deployment.
- External Git deployment allows applications to be deployed directly from source repositories.
- Slot swapping helps promote tested application versions to production.
- Automatic scaling adjusts application capacity based on workload requirements.
- Azure Load Testing helps evaluate application performance under simulated traffic.

## Cleanup

Deleted the resource group `az104-rg9` after completing the lab to remove the associated App Service resources and minimize unnecessary Azure charges.
