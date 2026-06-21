resource "aws_internet_gateway" "main" {
  count  = var.igw_yn == true ? 1 : 0
  vpc_id = aws_vpc.main.id
}