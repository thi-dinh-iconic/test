  resource "aws_instance" "app" {
    ami           = "ami-0abcdef1234567890"
    instance_type = "t3.medium"

    subnet_id              = var.subnet_id
    vpc_security_group_ids = [var.sg_id]

    tags = {
      Name = "app-server"
    }
  }
