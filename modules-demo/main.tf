module "ec2module" {
  source = "./ec2"
  ec2name = "My First Module"  
}

resource "aws_iam_user" "mainUser" {
  name = "MainUser"  
}

output "instance-dns" {
  value = "${module.ec2module.instance_ip_addr}"
}