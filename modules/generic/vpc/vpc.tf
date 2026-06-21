# VPC resource

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge({
    "Name" = var.vpc_name
    },
  var.tags)
}

# VPC Secondary CIDR block association
resource "aws_vpc_ipv4_cidr_block_association" "secondary" {
  for_each   = toset(var.vpc_secondary_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value
}