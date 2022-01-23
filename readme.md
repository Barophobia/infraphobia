# Infraphobia

This repository holds all the IaC files I use for my infrastructure, no secrets in here so don't try.

Terraform currently doesn't work it builds devices but apt says it is insecure, this will be worked on.

## Description

The idea of this repo is so that if I ever need to rebuild my home infrastructure it can be back up with in a few hours instead of a few days like it took to manually build when I first started, also it serves as a good place for people to use or look at my code where needed.

The project is broken down into application folders for example you will find the ansible playbooks inside the ansible folder this is the format for all the other apps used for the project.

## Future plans

- Add a BICEP Script to deploy on Azure 
- Automatically download the Images for the machines without having to manually go into the proxmox GUI
