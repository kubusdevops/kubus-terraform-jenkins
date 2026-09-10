output "jenkins_load_balancer_url" {
  value       = "http://${aws_lb.jenkins_app_alb.dns_name}"
  description = "The public web address to instantly access your Jenkins dashboard page"
}

output "jenkins_controller_private_ip" {
  value       = aws_instance.jenkins_app_controller.private_ip
  description = "The private network interface identifier for your master compute node"
}

output "jenkins_agent_private_ip" {
  value       = aws_instance.jenkins_app_agent.private_ip
  description = "The private network interface identifier for your worker workload engine"
}
