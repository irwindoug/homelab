terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">=2.0.0"
    }
  }
}

variable "proxmox_api_url" {
  description = "The URL of the Proxmox API"
  type = string
}

variable "proxmox_token_id" {
  description = "The token ID for the Proxmox API"
  type = string
  sensitive = true
}

variable "proxmox_token_secret" {
  description = "The token secret for the Proxmox API"
  type = string
  sensitive = true
}

provider "proxmox" {
  api_url = var.proxmox_api_url
  token_id = var.proxmox_token_id
  token_secret = var.proxmox_token_secret
}