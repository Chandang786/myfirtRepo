
data "aws_ami" "app_ami" {

  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]

  }
}

resource "aws_instance" "myweb" {
    ami = data.aws_ami.app_ami.id
    #"00ee4df451840fa9d"
    instance_type = "t2.micro"
}
