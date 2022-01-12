# Infraphobia

This repository holds all the IaC files I use for my infrastructure, no secrets in here so don't try :)

## Description

The idea of this repo is so that if I ever need to rebuild my home infrastructure it can be back up with in a few hours instead of a few days like it took to manually build when I first started, also it serves as a good place for people to use or look at my code where needed.

## Minimum requirements for every ansible deployment

- Install Proxmox on Device

- Install Pip and proxmoxer
```
apt install pip 
pip install proxmoxer
```

- Download Ubunut 21.04 container template inside proxmox

- Create a hosts.ini on your ansible controller that you will use. You can see what I call my hosts in the ansible playbooks, change where required.

## Steps to recreate portainer deployment

- Clone this repo onto the ansible controller
  
- create a pass_key variable vault file in the proxmox folder (or replace the variable in the yml with a plain text password, not secure or recommended)

- create a pub_key variable vault file in the proxmox folder (or replace the variable in the yml with a plain text password, not secure or recommended)

- Run the createportainer.yml playbook (remove --ask-vault-pass if you aren't using ansible vault variables. Hint: you should.)

```
ansible-playbook -i host.ini -u root --ask-vault-pass createportainer.yml
```

- Portainer is now available on IP_ADDRESS:9443

## Steps to recreate game-servers deployment

- Clone this repo onto the ansible controller
  
- create a pass_key variable vault file in the proxmox folder (or replace the variable in the yml with a plain text password, not secure or recommended)

- create a pub_key variable vault file in the proxmox folder (or replace the variable in the yml with a plain text password, not secure or recommended)

- Run the createportainer.yml playbook (remove --ask-vault-pass if you aren't using ansible vault variables. Hint: you should.)

```
ansible-playbook -i host.ini -u root --ask-vault-pass create-game-servers.yml
```

- The server should now be built and game services up and usable.
