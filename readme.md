# Infraphobia

This repository holds all the IaC files I use for my infrastructure, no secrets in here so don't try.

## Description

The idea of this repo is so that if I ever need to rebuild my home infrastructure it can be back up with in a few hours instead of a few days like it took to manually build when I first started, also it serves as a good place for people to use or look at my code where needed.

## Network breakdown

| IP | Service |
|--- |---      |
| 192.168.0.1 | Gateway |
| 192.168.0.113 | Pi |
| 192.168.0.114 | Proxmox (VMM01) |
| 192.168.0.115 | Proxmox 2 / NAS |
| 192.168.0.122 | Portainer/Docker Host |
| 192.168.0.160 | TrueNAS |

## Service Breakdown

| Port | Service | Host |
|---|---|---|
| 9443 | Portainer | 0.122 |
| 9117 | Jackett | 0.122 |
| 7878 | Radarr | 0.122 |
| 8989 | Sonarr | 0.122 |
| 8080 | qBitTorrent | 0.122 |

#### Configuring using ansible

- Change directory into the service directory

- Make sure the hosts.ini file is set to the correct IP's

- Run the config yml playbooks

```
ansible-playbook -i hosts.ini -u root <YAML CONFIG FILE>
```

## Future plans

- Automatically download the Images for the machines without having to manually go into the proxmox GUI
