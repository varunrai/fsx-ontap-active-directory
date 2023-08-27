variable "ec2_instance_type" {
  description = "EC2 Instance Type for AD Server"
  type        = string
  default     = "t3.xlarge"
}

variable "ec2_iam_role" {
  description = "EC2 IAM Role with access to SSM Parameters"
  type        = string
  default     = "VarunS_FSxN_ReadOnlyRole"
}

variable "fsxn_password" {
  description = "FSxN Admin Passowrd"
  type        = string
  sensitive   = true
}

variable "fsxn_volume_security_style" {
  description = "Default Volume Security Style"
  type        = string
  default     = "MIXED"
}

variable "ad_domain" {
  description = "Default Volume Security Style"
  type        = string
  default     = "MIXED"
}

variable "instance_keypair" {
  description = "Value of the instance key pair"
  type        = string
}

variable "ec2_subnet_id" {
  description = "Subnet Id for EC2 Instances"
  type        = string
}

variable "security_groups_ids" {
  description = "Security Groups for EC2 Instances"
  type        = list(string)
}

variable "creator_tag" {
  description = "Tag with the Key as Creator"
  type        = string
}
