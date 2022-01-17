# To do:
# NFS Mounts
# Use vault for passwords

terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
    }
  }
}

provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://192.168.0.114:8006/api2/json"
    pm_password = ""
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
}