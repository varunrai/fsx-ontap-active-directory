locals {
  filesystem_name = "${var.creator_tag}-FSxN-Demo-1"
}

variable "fsxn_name" {
  description = "File System Name"
  type        = string
  default     = "FSxN-Demo-1"
}

variable "fsxn_password" {
  description = "Default Password"
  type        = string
  sensitive   = true
}

variable "fsxn_volume_security_style" {
  description = "Default Volume Security Style"
  type        = string
  default     = "MIXED"
}

variable "fsxn_subnet_ids" {
  description = "FSxN Deployment Subnet IDs - Specify Two when using MAZ or One when using SAZ"
  type        = list(string)
}

variable "fsxn_preferred_subnet_id" {
  description = "FSxN Deployment Preferred Subnet ID"
  type        = string
}

variable "fsxn_deployment_type" {
  description = "FSxN Deployment Type - Multi AZ (set as true) or Single AZ (set as false)"
  type        = bool
  default     = false
}

variable "fsxn_security_group_ids" {
  description = "FSxN Security Groups IDs"
  type        = list(string)
}

variable "creator_tag" {
  description = "Value of the creator tag"
  type        = string
}

variable "deployment_type_multiaz" {
  description = "Provision an Multi-AZ FSxN instance"
  type        = bool
  default     = false
}
