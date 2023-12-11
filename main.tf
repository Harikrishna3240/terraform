module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "dev"
  monitoring             = true
  vpc_security_group_ids = ["sg-0e3741b96ca8177be"]
  subnet_id              = "subnet-02fa5769b0c407d95"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
