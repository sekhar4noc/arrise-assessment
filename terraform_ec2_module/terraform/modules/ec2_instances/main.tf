resource "aws_instance" "ec2" {
  for_each = { for web, inst in var.instances : web => inst }

  ami           = var.ami_id
  instance_type = each.value.instance_type
  key_name      = each.value.key_name

  root_block_device {
    volume_type           = each.value.volume_type
    volume_size           = each.value.volume_size
    delete_on_termination = true
  }

  tags = {
    Name = "ec2-instance-${each.key}"
  }
}