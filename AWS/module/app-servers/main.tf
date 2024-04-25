resource "aws_instance" "app_server" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"
  count         = var.ec2_instance_count

  tags = {
    Name = "App-Server"
  }
}
