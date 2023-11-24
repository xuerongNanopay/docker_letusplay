resource "aws_security_group" "from_xrw_home" {
  name        = "xrw_sg"
  description = "xrw security grourp"
  vpc_id      = aws_vpc.xrw_ue1_vpc.id

  ingress {
    description      = "from xrw home only"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    # cidr_blocks      = ["0.0.0.0/0"]
    cidr_blocks      = ["67.70.122.14/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "private_all" {
  name        = "private_sg"
  description = "from xrw_sg"
  vpc_id      = aws_vpc.xrw_ue1_vpc.id

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["67.70.122.14/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}