provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "dbrs_assessment" {
  ami = "ami-8c122be9"
  instance_type = "m5.large"

  tags {
    Name = "assessment"
  }

}