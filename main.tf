#Create a Jenkins_Server using Terraform
provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_deployments" {
  ami             = "ami-09d3b3274b6c5d4aa"
  instance_type   = "t2.micro"
  key_name        = "testpem"
  security_groups = ["launch-wizard-1"]
  user_data       = file("jenkinsfile")


  tags = {
    Name = "app_deployments"
  }
}
