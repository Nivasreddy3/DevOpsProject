resource "aws_security_group" "my_sg" {
  name = "my_sg"

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "devops_server" {
  ami           = "ami-0c3389a4fa5bddaad"
  instance_type = var.instance_type
  security_groups = [aws_security_group.my_sg.name]

  tags = {
    Name = "DevOps-Server"
  }
}
