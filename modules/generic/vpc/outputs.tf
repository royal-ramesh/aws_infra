output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  value = [for key, value in var.vpc.public_subnet_cidrs : aws_subnet.public[key].id if value != null && value != ""]
}

output "private_subnet_ids" {
  value = [for key, value in var.vpc.private_subnet_cidrs : aws_subnet.private[key].id if value != null && value != ""]
}

output "private_subnet_id_arns" {
  value = [for key, value in var.vpc.private_subnet_cidrs : aws_subnet.private[key].arn if value != null && value != ""]
}

output "vpc_route_table_public_ids" {
  description = "List of VPC Public Route Tables IDs"
  value       = [for key, route_table in var.vpc.public_route_tables : aws_route_table.public[key].id if route_table != false]
}

output "vpc_route_table_private_ids" {
  description = "List of VPC Private Route Tables IDs"
  value       = [for key, route_table in var.vpc.private_route_tables : aws_route_table.private[key].id if route_table != false]
}

output "nat_ids" {
  description = "List of NAT ids"
  value       = [for key, value in var.vpc.nat_yn : aws_nat_gateway.main[key].id if value == true]
}


output "igw_id" {
  value = var.igw_yn == true ? aws_internet_gateway.main[0].id : null
}