resource "aws_instance" "cicd-ec2" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "my-keypair"
  security_groups = [aws_security_group.my_sp.name]
  

  tags = {
    Name = "mario-app"
  }
}

output "ec2_instance_public_ip" {
  value = aws_instance.cicd-ec2.public_ip
}
