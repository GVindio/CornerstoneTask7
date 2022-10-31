#Create a Jenkins_Server using Terraform
terraform { 
    required_providers { 
        aws = { 
            source = "hashicorp/aws" 
            version = "~> 4.37.0" 
            } 
    }

}

provider "aws" {
  
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_deployments" {
  ami             = "ami-09d3b3274b6c5d4aa"
  instance_type   = "t2.micro"
  key_name        = "testpem"
  security_groups = ["launch-wizard-1"]
  user_data       = file("jenkinsfile")


  tags = {
    Name = "CornerStoneTask7"
  }
}
