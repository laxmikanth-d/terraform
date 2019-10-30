resource "aws_vpc" "myfirstvpc" {
 cidr_block = "10.0.0.0/16" 
}

output  "VPCID" {
    value="${aws_vpc.myfirstvpc.id}"
}