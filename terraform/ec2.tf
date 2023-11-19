resource "aws_instance" "nbp" {
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.xrw_auth.id
  vpc_security_group_ids = [aws_security_group.xrw_sg.id]
  subnet_id = aws_subnet.xrw_ue1c_public_snet.id
  user_data = file("userdata.tpl")

  tags = {
    Name = "nbp-staging"
  }

  root_block_device {
    volume_size = 10
  }

  provisioner "local-exec" {
    command = templatefile("${var.host_os}-ssh-config.tpl", {
      hostname = "nbp-staging"
      ip = self.public_ip,
      user = "ubuntu",
      identityfile = "~/.ssh/xrw_ec2"
    })
    interpreter = [ "bash", "-c" ]
  }
}

output "nbp-staging_ip" {
  value = aws_instance.nbp.public_ip
}

output "nbp-staging_dns" {
  value = aws_instance.nbp.public_dns
}