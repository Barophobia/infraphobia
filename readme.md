# Infraphobia

This repository holds all the IaC files I use for my infrastructure, no secrets in here so don't try :)

## Description

The idea of this repo is so that if I ever need to rebuild my home infrastructure it can be back up with in a few hours instead of a few days like it took to manually build when I first started, also it serves as a good place for people to use or look at my code where needed.

## Steps to recreate

- Install Proxmox on Device

- Install Pip and proxmoxer
```
apt install pip 
pip install proxmoxer
```

- Download Debian Turnkey Core Container container template inside proxmox

- Clone this repo onto the ansible controller and create a pass.txt vault file in the proxmox folder

- Run the createcontainer.yml playbook

```
ansible-playbook -i host.ini -u root --ask-vault-pass createcontainer.yml
```
