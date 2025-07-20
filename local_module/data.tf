data "aws_ami" "ami" {

  owners = ["065948796054"]
}

output "ami" {
   value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
   ami = data.aws_ami.ami.id
   instance_type = "t2.micro"
   vpc_security_group_ids = ["sg-04e1d05a8c19f60d1"]
}

variable "instance_type" {}

