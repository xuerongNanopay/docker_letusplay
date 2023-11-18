resource "aws_key_pair" "xrw_auth" {
  key_name   = "xrw_auth"
  public_key = file("~/.ssh/xrw_ec2.pub")
}