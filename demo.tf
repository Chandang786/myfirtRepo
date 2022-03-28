
data "aws_ami" "app_ami" {

  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]

  }
}

variable "instance_type" {
  default = "t2.micro"
}

resource "aws_instance" "myweb" {
    ami = data.aws_ami.app_ami.id
    #"00ee4df451840fa9d"
    instance_type = var.instance_type
}
