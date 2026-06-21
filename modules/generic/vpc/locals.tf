data aws_caller_identity current {}
data aws_region current {}

locals {
  account_id = data.aws_caller_identity.current.account_id
  region_name = data.aws_region.current.name

  availability_zones = {
    az1 ="${local.region_name}a",
    az2 ="${local.region_name}b",
    az3 ="${local.region_name}c"
  }

  availability_zones_index = {
    az1 = "a",
    az2 = "b",
    az3 = "c"
  }

  public_subnets_association = flatten([for az, subnets in var.vpc.public_route_table_associations : [
    for subnet in subnets : {
      availability_zone = az
      subnet            = subnet
    } if subnet != "" && subnet != null
  ]])

  private_subnets_association = flatten([for az, subnets in var.vpc.private_route_table_associations : [
    for subnet in subnets : {
      availability_zone = az
      subnet            = subnet
    } if subnet != "" && subnet != null
  ]])
}