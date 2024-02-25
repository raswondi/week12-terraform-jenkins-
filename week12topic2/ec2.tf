# create the ec2 instance
resource "aws_instance" "server" {
  ami                         = "ami-07761f3ae34c4478d"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.ec2_key.key_name
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = module.vpc.public_subnets[0]
  user_data                   = file("jenkins.sh")
  associate_public_ip_address = true

  tags = {
    Name = "jenkins-instance"
    Env  = "dev"
  }
}


