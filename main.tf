provider "aws" {
     alias = "North-Virginia"
     region = "us-east-1"
     access_key = "AKIAQRH4ND34WNGRNWOP"
     secret_key = "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"
}
provider "aws" {
     alias = "Ohio"
     region = "us-east-2"
     access_key = "AKIAQRH4ND34WNGRNWOP"
     secret_key = "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"
}
resource "aws_instance" "assignment3-1" {
  provider = aws.North-Virginia
  ami      = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  key_name = "Terraform-NV"

  tags = {
    Name = "hello-virginia"
  }
}
resource "aws_instance" "assignment3-2" {
  provider = aws.Ohio
  ami      = "ami-0b4750268a88e78e0"
  instance_type = "t2.micro"
  key_name = "Terraform"

  tags = {
    Name = "hello-ohio"
  }
}
