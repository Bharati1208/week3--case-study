provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "Day29"

  tags = {
    Name = "Demo-Server"
  }
}
