variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
}

variable "vpc_secondary_cidr" {
  description = "A list of secondary CIDR blocks for the VPC"
  type        = list(string)
  default     = []
}

variable "vpc" {
  type = object({
    public_subnet_cidrs = object({
      az1 = string
      az2 = string
      az3 = string
    })
    private_subnet_cidrs = object({
      az1 = string
      az2 = string
      az3 = string
    })
    nat_yn = object({
      az1 = bool
      az2 = bool
      az3 = bool
    })
    public_route_tables = object({
      az1 = bool
      az2 = bool
      az3 = bool
    })
    private_route_tables = object({
      az1 = bool
      az2 = bool
      az3 = bool
    })
    public_route_table_associations = object({
      az1 = list(string)
      az2 = list(string)
      az3 = list(string)
    })
    private_route_table_associations = object({
      az1 = list(string)
      az2 = list(string)
      az3 = list(string)
    })
  })
}

variable "public_subnet_suffix" {
  description = "Suffix for public subnets"
  type        = string
}

variable "private_subnet_suffix" {
  description = "Suffix for private subnets"
  type        = string
}

variable "igw_yn" {
  description = "Boolean to determine if an Internet Gateway should be created"
  type        = bool
  default     = false
}