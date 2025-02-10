# Fetch the VPC ID from the vpc_workspace
data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "terraform-hyw"
    workspaces = {
      name = "team-vpc"
    }
  }
}

# Create Private Subnets

resource "aws_subnet" "private_1" {
  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-southeast-1a"

  tags = {
    Name = "private-subnet-1"
  }
}
