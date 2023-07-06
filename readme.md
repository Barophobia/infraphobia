# Infraphobia

This repository holds all the IaC files I use for my infrastructure, no secrets in here so don't try.

## Description

The idea of this repo is so that if I ever need to rebuild my home infrastructure it can be back up with in a few hours instead of a few days like it took to manually build when I first started, also it serves as a good place for people to use or look at my code where needed.

## Deployment

Deploy portainer and then deploy prod_stack inside of portainer.

## Network breakdown

| IP | Service |
|--- |---      |
| 192.168.1.1 | Gateway |
| 192.168.1.10 | ESXi |
| 192.168.1.100 | Docker Host |


## Service Breakdown

| Port | Service | Host |
|---|---|---|
| 8123 | HomeAssistant | 1.100 |
|  |  |
| 9090 | Prometheus | 1.100 |
|  |  |
| 3000 | Grafana | 1.100 |
|  |  |
| 9100 | Node Exporter | 1.100 |
|  |  |
| 7878 | Radarr | 1.100 |
|  |  |
| 9696 | Prowlarr | 1.100 |
|  |  |
| 32400 | Plex | 1.100 |
| 3005 | Plex | 1.100 |
| 8324 | Plex | 1.100 |
| 32469 | Plex | 1.100 |
| 1900 | Plex | 1.100 |
| 32410 | Plex | 1.100 |
| 32412 | Plex | 1.100 |
| 32413 | Plex | 1.100 |
| 32414 | Plex | 1.100 |
|  |  |
| 8080 | qBittorrent | 1.100 |
| 6881 | qBittorrent | 1.100 |
|  |  |
| 9443 | Portainer | 1.100 |