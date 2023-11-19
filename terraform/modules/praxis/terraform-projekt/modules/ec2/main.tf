resource "aws_security_group" "ec2_sg" {
  name        = "ec2_security_group"
  description = "Security Group for EC2 Instance"

  ingress {
    description = "Allow SSH"
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "ec2_instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.ec2_sg.name]

  iam_instance_profile = var.instance_profile == "" ? null : var.instance_profile
}
