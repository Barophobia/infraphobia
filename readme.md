# Infraphobia

This repository holds all the IaC files I use for my infrastructure, no secrets in here so don't try.

Terraform currently doesn't work it builds devices but apt says it is insecure, this will be worked on.

## Description

The idea of this repo is so that if I ever need to rebuild my home infrastructure it can be back up with in a few hours instead of a few days like it took to manually build when I first started, also it serves as a good place for people to use or look at my code where needed.

The project is broken down into application folders for example you will find the ansible playbooks inside the ansible folder this is the format for all the other apps used for the project.


## Network breakdown

| IP | Service |
|--- |---      |
| 192.168.0.1 | Gateway |
| 192.168.0.114 | Proxmox (VMM01) |
|    |          |

## All in one with Terraform and Ansible

#### Deploying using terraform

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

#### Configuring using ansible

- Change directory into the ansible directory

- Make sure the hosts.ini file is set to the correct IP's

- Run the config yml playbooks

```
ansible-playbook -i hosts.ini -u root <YAML CONFIG FILE>
```

## Future plans

- Automatically download the Images for the machines without having to manually go into the proxmox GUI
