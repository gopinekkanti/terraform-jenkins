provider "aws" {
  region = "us-east-1"  # Specify your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0c7217cdde317cfec"  # Specify the AMI ID for the instance
  instance_type = "t2.micro"  # Specify the instance type
  
  tags = {
    Name = "ExampleInstance"
  }
  
  # Optionally, you can specify additional configurations such as key_name, security groups, subnet_id, etc.
  # key_name = "my-keypair"
  # vpc_security_group_ids = ["sg-12345678"]
  # subnet_id = "subnet-12345678"
}

