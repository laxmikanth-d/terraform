resource "aws_instance" "myec2" {
    ami = "ami-04b762b4289fba92b"
    instance_type = "t2.micro"  

    tags = {
        Name = "Public IP"
    }
}

resource "aws_eip" "elastic_ip" {
  instance = "${aws_instance.myec2.id}"
}

output "Public IP" {
    value = "${aws_eip.elastic_ip.public_ip}"
}