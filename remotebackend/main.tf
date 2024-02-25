resource "aws_instance" "demo" {
  ami = "ami-07761f3ae34c4478d"
  #count         = 1
  instance_type = "t3.micro"
  tags = {
    Name      = "Test-dev-server"
    terraform = true
    owner     = "dev"
    env       = "dev"

  }
}
