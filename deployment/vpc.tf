module "vpc" {
  source = "../modules/generic/vpc"
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
  public_subnet_suffix = var.public_subnet_suffix
  private_subnet_suffix = var.private_subnet_suffix
  igw_yn = var.igw_yn
  vpc = var.vpc
  tags = var.tags
}