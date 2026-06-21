# Public Subnet
resource "aws_subnet" "public" {
  for_each          = toset([for key, value in var.vpc.public_subnet_cidrs : key if value != "" && value != null])
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.vpc.public_subnet_cidrs[each.key]
  availability_zone = local.availability_zones[each.key]
  tags = merge({
    "Name" = "${var.vpc_name}-${var.public_subnet_suffix}-${local.availability_zones[each.key]}"
    })
}

#Private subnet
resource "aws_subnet" "private" {
  for_each          = toset([for key, value in var.vpc.private_subnet_cidrs : key if value != "" && value != null])
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.vpc.private_subnet_cidrs[each.key]
  availability_zone = local.availability_zones[each.key]
  tags = merge({
    "Name" = "${var.vpc_name}-${var.private_subnet_suffix}-${local.availability_zones[each.key]}"
    })
}