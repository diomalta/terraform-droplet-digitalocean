variable "do_token" {
  type        = string
  description = "Access Token at Digital Ocean"
}

variable "pvt_key" {
  type        = string
  description = "SSH private key"
}

variable "droplet_image" {
  type        = string
  description = "Version of the droplet image"
  default     = "ubuntu-18-04-x64"
}

variable "droplet_name" {
  type        = string
  description = "Droplet name"
  default     = "www"
}

variable "droplet_region" {
  type        = string
  description = "Region that will host your droplet"
  default     = "nyc1"
}

variable "droplet_size" {
  type        = string
  description = "Size available for your droplet"
  default     = "s-1vcpu-1gb"
}

variable "droplet_private_networking" {
  type        = bool
  description = "Private networking"
  default     = true
}

variable "droplet_certificate_domain" {
  type        = list(string)
  description = "Domains to be used in the certificate"
  default     = ["example.com.br"]
}

variable "droplet_certificate_name" {
  type        = string
  description = "Certificate name"
  default     = "le-cert-example"
}

variable "droplet_domain_name" {
  type        = string
  description = "Domain name"
  default     = "example.com.br"
}

variable "droplet_ssh_key_names" {
  type        = list(string)
  description = "SSH key names saved in Digital Ocean"
  default     = ["john@ssh", "joe@ssh", "ant@ssh"] 
}
