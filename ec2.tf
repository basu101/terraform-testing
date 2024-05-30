provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
  
}


resource "aws_instance" "demo_ec2" {
    instance_type = "t2.micro"
    ami = var.ami

    tags = {
        Name = "demo_ec2"
    }
  
}
