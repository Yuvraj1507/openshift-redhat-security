
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "secure_server" {
  ami           = "ami-12345678"
  instance_type = "t3.medium"
}
