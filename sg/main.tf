resource "aws_instance" "ec2" {
   ami = "ami-04b762b4289fba92b"
    instance_type = "t2.micro"  
    security_groups = ["${aws_security_group.web_traffic.name}"]

    tags = {
        Name = "SG EC2"
    }
}

resource "aws_security_group" "web_traffic" {
  name = "Allow HTTPS"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }
}

