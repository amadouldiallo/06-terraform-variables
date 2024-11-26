# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Variable declarations
variable "aws_access_key" {
  sensitive = true
}
variable "aws_secret_key" {
  sensitive = true
}

variable "aws_region" {
  description = "AWS region"
  type = string
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR Block for vpc"
  default = "10.0.0.0/16"
  type = string
}

variable "instance_count" {
    description = "Set number instance"
    type = number
    default = 2
}

variable "enable_vpn_gateway" {
  description = "Enable a VPN gateway in your VPC."
  type        = bool
  default     = false
}

variable "public_subnet_count" {
    default = 2
    description = "Number of public subnet"
    type = number
}
variable "private_subnet_count" {
  description = "Number of private subnets."
  type        = number
  default     = 2
}


variable "public_subnet_cidr_blocks" {
  description = "Available cidr blocks for public subnets."
  type        = list(string)
  default     = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24",
  ]
}

variable "private_subnet_cidr_blocks" {
    description = "Avalaible cidr blocks for public subnets"
    type = list(string)
    default = [ 
        "10.0.101.0/24",
        "10.0.102.0/24",
        "10.0.103.0/24",
        "10.0.104.0/24",
        "10.0.105.0/24",
        "10.0.106.0/24",
        "10.0.107.0/24",
        "10.0.108.0/24",
    ]
}

variable "resource_tags" {
  description = "Reources tags"
  type = map(string)
  default = {
    project = "project-alpha"
    environment = "dev"
  }
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type."
  type        = string
}