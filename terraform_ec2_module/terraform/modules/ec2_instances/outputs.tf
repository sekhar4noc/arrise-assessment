output "instance_ids" {
  value = [for inst in aws_instance.ec2 : inst.id]
}

output "public_ips" {
  value = [for inst in aws_instance.ec2 : inst.public_ip]
}