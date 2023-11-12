## Ec2 instance 

resource "aws_instance" "jenkins20_ec2" {
  ami                    = "ami-0e8a34246278c21e4"
  vpc_security_group_ids = [aws_security_group.jenkins20_secgrp.id]
  instance_type          = "t2.micro"
  key_name               = "ec2-demo"
  subnet_id              = aws_subnet.public_subnet1.id
  user_data              = file("userdata.sh")
  tags = {
    Name = "Jenkins20"
    env  = "Dev"
  }
}