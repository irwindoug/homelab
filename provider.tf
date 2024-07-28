terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">=2.0.0"
    }
  }
}

variable "PROXMOX_API_URL" {
  description = "The URL of the Proxmox API"
  type        = string
}

variable "PROXMOX_TOKEN_ID" {
  description = "The token ID for the Proxmox API"
  type        = string
  sensitive   = true
}

variable "PROXMOX_TOKEN_SECRET" {
  description = "The token secret for the Proxmox API"
  type        = string
  sensitive   = true
}

provider "proxmox" {
  pm_api_url          = var.PROXMOX_API_URL
  pm_api_token_id     = var.PROXMOX_TOKEN_ID
  pm_api_token_secret = var.PROXMOX_TOKEN_SECRET
}