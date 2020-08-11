variable "target_host" {
  description = "The target host"
}

variable "user" {
  description = "Username for connecting to the host"
}

variable "ssh_private_key" {
  description = "Location of private key file for SSH access to the host"
}

variable "bastion_host" {
  description = "Bastion host used to access target host"
  default     = null
}

variable "bastion_host_key" {
  description = "Location of private key file for SSH access to bastion host"
  default     = null
}

variable "swapfile_size" {
  description = "Size of the swapfile to create (GB)"
  type        = number
  default     = 4
}
