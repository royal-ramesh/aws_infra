resource "aws_route" "public" {
  for_each               = toset([for key, route_table in var.vpc.public_route_tables : key if var.igw_yn == true && route_table == true])
  route_table_id         = aws_route_table.public[each.key].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main[0].id
}

# NAT Routing
resource "aws_route" "private_nat" {
  for_each               = toset([for key, value in var.vpc.nat_yn : key if value == true])
  route_table_id         = aws_route_table.private[each.key].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.main[each.key].id
}