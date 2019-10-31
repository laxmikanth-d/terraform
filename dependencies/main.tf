resource "aws_instance" "web" {
    ami = "ami-04b762b4289fba92b"
    instance_type = "t2.micro" 

    depends_on = ["aws_instance.db"] 
}


resource "aws_instance" "db" {
    ami = "ami-04b762b4289fba92b"
    instance_type = "t2.micro"  
}
