# Terraform Modules for Azure Virtual Infrastructure

This repository contains Terraform modules for provisioning Azure virtual network, subnets, network interface cards (NIC), and virtual machines. These modules are designed to provide a flexible and scalable foundation for deploying virtualized infrastructure in Microsoft Azure.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Modules](#modules)
  - [1. Virtual Network](https://github.com/midejoe/terraform-azure-modules/blob/main/Infra/main.tf)
  - [2. Subnets](https://github.com/midejoe/terraform-azure-modules/blob/main/Infra/main.tf)
  - [3. Network Interface Cards (NIC)](https://github.com/midejoe/terraform-azure-modules/blob/main/Infra/main.tf)
  - [4. Virtual Machines](https://github.com/midejoe/terraform-azure-modules/blob/main/Infra/main.tf)
- [Variables](https://github.com/midejoe/terraform-azure-modules/blob/main/Infra/variables.tf)


## Prerequisites

Before using these Terraform modules, ensure that you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Azure subscription and necessary credentials.

## Getting Started

To use these Terraform modules, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/midejoe/terraform-azure-modules.git
   
2. Change into the directory:

   ```bash
   cd your-repo

3. Initialize Terraform:

    ```bash
   terraform init

4. Create a Terraform execution plan:

    ```bash
    terraform plan

5. Apply the plan to provision the infrastructure:

    ```bash
    terraform apply


