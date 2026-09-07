locals {
  name = "jenkins"
}

resource "aws_instance" "jenkins_app_controller" {
  ami                    = var.ami_id
  instance_type          = var.controller_instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.jenkins_app_sg.id]
  tags = {
    Name = "${local.name}-controller"
  }
  user_data = file("jenkins-userdata.sh")
}

resource "aws_instance" "jenkins_app_agent" {
  ami                    = var.ami_id
  instance_type          = var.agent_instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.jenkins_app_sg.id]
  tags = {
    Name = "${local.name}-agent"
  }
  user_data = file("agent-userdata.sh")
}

