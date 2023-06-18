# resource "aws_default_vpc" "default" {}

# resource "aws_security_group" "variable-sg" {
#   name        = "variable-sg"
#   vpc_id      = aws_default_vpc.default.id
# }

resource "aws_instance" "variable-terraform" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "terraform"
  vpc_security_group_ids = ["sg-087daa8193e4dd6f8"]
# vpc_security_group_ids = [aws_security_group.variable-sg.id]
  tags = {
    Name    = "variables.tf"
    Project = "terraform"
  }
}