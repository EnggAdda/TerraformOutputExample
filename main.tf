provider "aws" {
 region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami = "ami-061a125c7c02edb39"
  instance_type = "t2.micro"
    tags ={
        Name = "example-instance",
    }
}

output "instance_id" {
  description = "Id of the instance created"
  value = aws_instance.example.id
}

output "instance_public_ip" {
  description = "public IP of the instance created"
  value = aws_instance.example.public_ip
}

