resource "aws_security_group" "jenkins_app_sg" {
  name        = "jenkins-app-sg"
  description = "Security rules for Jenkins infrastructure"
  vpc_id      = var.vpc_id

  # Allow public web traffic to reach the Load Balancer on Port 80
  ingress {
    description = "Public HTTP web traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow the Load Balancer to talk to Jenkins on Port 8080
  ingress {
    description = "Jenkins backend communication"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH Access for debugging
  ingress {
    description = "Administrative management SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic so instances can pull down installations/plugins
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

