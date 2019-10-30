resource "aws_instance" "myec2" {
    ami = "ami-04b762b4289fba92b"
    instance_type = "t2.micro"  
}
