output "jenkins_url" {
  value = "http://${aws_instance.server.public_ip}:8080"

}

output "ssh_command" {
  value = "ssh -i jenkins.pem ec2-user@public_ip"

}