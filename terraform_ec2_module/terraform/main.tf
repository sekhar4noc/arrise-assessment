module "ec2_instances" {
  source = "./modules/ec2_instances"

  ami_id = "ami-0c55b159cbfafe1f0"  # Example Amazon Linux 2 AMI (adjust for your region)

  instances = [
    {
      instance_type = "t2.micro"
      volume_type   = "gp2"
      volume_size   = 8
      key_name      = "key1"
    },
    {
      instance_type = "t3.small"
      volume_type   = "gp3"
      volume_size   = 10
      key_name      = "key2"
    },
    {
      instance_type = "m5.large"
      volume_type   = "io1"
      volume_size   = 20
      key_name      = "key3"
    },
    {
      instance_type = "t3.medium"
      volume_type   = "gp2"
      volume_size   = 12
      key_name      = "key4"
    },
    {
      instance_type = "t2.small"
      volume_type   = "gp3"
      volume_size   = 15
      key_name      = "key5"
    }
  ]
}