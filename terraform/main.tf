# To do:
# NFS Mounts

terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
    }
  }
}

variable "pm_pass" {
  type = string
  description = "Password to proxmox"
  sensitive = true
  
}

variable "lxc_pass" {
  type = string
  description = "Password to for lxc user"
  sensitive = true
  
}


provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://192.168.0.114:8006/api2/json"
    pm_password = var.pm_pass
    pm_user = "root@pam"
    pm_otp = ""
}

resource "proxmox_lxc" "media" {
    features {
        nesting = true
        mount   = "nfs;cifs"
    }
    hostname = "media01"
    network {
        name = "eth0"
        bridge = "vmbr0"
        ip = "192.168.0.184/24"
        ip6 = "dhcp"
    }

    rootfs {
        storage = "pvedata"
        size    = "20G"
    }

    ostemplate = "local:vztmpl/ubuntu-21.04-standard_21.04-1_amd64.tar.gz"
    password = ""
    target_node = "vmm01"
    unprivileged = false
    cores = 4
    memory = 16000
    start = true
    swap = 4192
    description = "Used to host docker compose containers for media services"
    onboot = true
    ssh_public_keys = file("~/.ssh/id_rsa.pub")
}

resource "proxmox_lxc" "gameserver01" {
    features {
        nesting = true
        mount   = "nfs;cifs"
    }
    hostname = "gameserver01"
    network {
        name = "eth0"
        bridge = "vmbr0"
        ip = "192.168.0.183/24"
    }

    rootfs {
        storage = "pvedata"
        size    = "20G"
    }

    ostemplate = "local:vztmpl/ubuntu-21.04-standard_21.04-1_amd64.tar.gz"
    password = var.lxc_pass
    target_node = "vmm01"
    unprivileged = false
    cores = 4
    memory = 16000
    start = true
    swap = 4192
    description = "Used to host docker compose containers for game servers"
    onboot = true
    ssh_public_keys = file("~/.ssh/id_rsa.pub")
}