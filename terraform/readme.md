# Terraform Infraphobia

## Description

This holds the terraform scripts used to deploy infrastructure.

## How to deploy using Terraform

- Clone the repository

```
git clone https://github.com/barophobia/infraphobia
```

- Change driectory into the terraform folder

- Use terraform init to make sure the proxmox provider is working correctly

```
terraform init
```

- Change the host user information and IP addresses where required

- Apply the changes

```
terraform apply
```