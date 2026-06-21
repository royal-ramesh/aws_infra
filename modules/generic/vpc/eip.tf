resource "aws_eip" "main" {
  for_each = toset([for key, value in var.vpc.nat_yn : key if value == true])
  public_ipv4_pool = "amazon"
  domain           = "vpc"
}