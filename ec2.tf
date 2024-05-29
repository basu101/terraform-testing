provider "aws" {
    region = var.region
  
}


resource "aws_instance" "demo_ec2" {
    instance_type = "t2.micro"
    ami = var.ami

    tags = {
        Name = "demo_ec2"
    }
  
}