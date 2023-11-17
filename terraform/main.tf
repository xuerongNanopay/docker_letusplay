resource "aws_vpc" "xrw_ue1_vpc" {
  cidr_block = "10.0.0.0/16"
  # enable_dns_hostnames = true

  tags = {
    Name = "xrw_ue1_vpc"
  }
}

resource "aws_default_route_table" "xrw_ue1_vpc_default_rtab" {
  default_route_table_id = aws_vpc.xrw_ue1_vpc.default_route_table_id
  route {
    cidr_block = "10.0.0.0/16"
  }
  tags = {
    Name = "xrw_ue1_vpc_default_rtab"
  }
}

# Four public submit
resource "aws_subnet" "xrw_ue1a_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.0.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "xrw_ue1a_private_snet"
  }
  
}
resource "aws_subnet" "xrw_ue1b_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.16.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  tags = {
    Name = "xrw_ue1b_private_snet"
  }
}
resource "aws_subnet" "xrw_ue1c_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.32.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1c"
  tags = {
    Name = "xrw_ue1c_private_snet"
  }
}
resource "aws_subnet" "xrw_ue1d_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.48.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1d"
  tags = {
    Name = "xrw_ue1d_private_snet"
  }
}

# Two private submit
resource "aws_subnet" "xrw_ue1e_public_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.64.0/20"
  availability_zone = "us-east-1e"
  tags = {
    Name = "xrw_ue1e_public_snet"
  }
}
resource "aws_subnet" "xrw_ue1f_public_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.80.0/20"
  availability_zone = "us-east-1f"
  tags = {
    Name = "xrw_ue1f_public_snet"
  }
}