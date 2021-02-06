#Create an instance along with attach additional volume
provider "aws" {

  region = "us-east-1"

}
resource "aws_instance" "first_terraform_instance" {

  ami           = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
  monitoring    = true
  ebs_block_device {
    device_name = "/dev/sdg"
    volume_size = 5
    volume_type = "gp2"
    delete_on_termination = true
  }
  tags = {

    Name        = "EC2_Instance_Terraform"
    Environment = "Testing"
  }
}

