# Public route tables
resource "aws_route_table" "public" {
  for_each = toset([for key, route_table in var.vpc.public_route_tables : key if route_table != false])
  vpc_id   = aws_vpc.main.id
  tags = merge({
    Name = "${var.vpc_name}-rtbl-${var.public_subnet_suffix}-${each.key}",
  })
}

# Private route table
resource "aws_route_table" "private" {
  for_each = toset([for key, route_table in var.vpc.private_route_tables : key if route_table != false])
  vpc_id   = aws_vpc.main.id
  tags = merge({
    Name = "${var.vpc_name}-rtbl-${var.private_subnet_suffix}-${each.key}",
  })
}

# Route table association
# Public subnets.
resource "aws_route_table_association" "public" {
  for_each = {
    for subnet_association in local.public_subnets_association : "${subnet_association.availability_zone}.${subnet_association.subnet}" => subnet_association
  }
  subnet_id      = aws_subnet.public[each.value.subnet].id
  route_table_id = aws_route_table.public[each.value.availability_zone].id
}

# Private subnets
resource "aws_route_table_association" "private" {
  for_each = {
    for subnet_association in local.private_subnets_association : "${subnet_association.availability_zone}.${subnet_association.subnet}" => subnet_association
  }
  subnet_id      = aws_subnet.private[each.value.subnet].id
  route_table_id = aws_route_table.private[each.value.availability_zone].id
}