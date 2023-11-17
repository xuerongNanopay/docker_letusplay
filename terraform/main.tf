resource "aws_vpc" "xrw_ue1_vpc" {
  cidr_block = "10.0.0.0/16"
  # enable_dns_hostnames = true

  tags = {
    Name = "xrw_ue1"
  }
}

# Four public submit
resource "aws_subnet" "xrw_ue1a_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.0.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "xrw_ue1a_private"
  }
  
}
resource "aws_subnet" "xrw_ue1b_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.16.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  tags = {
    Name = "xrw_ue1b_private"
  }
}
resource "aws_subnet" "xrw_ue1c_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.32.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1c"
  tags = {
    Name = "xrw_ue1c_private"
  }
}
resource "aws_subnet" "xrw_ue1d_private_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.48.0/20"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-1d"
  tags = {
    Name = "xrw_ue1d_private"
  }
}

# Two private submit
resource "aws_subnet" "xrw_ue1e_public_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.64.0/20"
  availability_zone = "us-east-1e"
  tags = {
    Name = "xrw_ue1e_public"
  }
}
resource "aws_subnet" "xrw_ue1f_public_snet" {
  vpc_id = aws_vpc.xrw_ue1_vpc.id
  cidr_block = "10.0.80.0/20"
  availability_zone = "us-east-1f"
  tags = {
    Name = "xrw_ue1f_public"
  }
}