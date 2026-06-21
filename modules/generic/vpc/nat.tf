resource "aws_nat_gateway" "main" {
  for_each      = toset([for key, value in var.vpc.nat_yn : key if value == true])
  subnet_id     = aws_subnet.public[each.key].id
  allocation_id = aws_eip.main[each.key].id

  tags = merge({
    Name = "${var.vpc_name}-nat-sub-${var.public_subnet_suffix}-${local.availability_zones[each.key]}",
  })

}