
data "aws_ami" "ubuntu" {
  most_recent  = true
   owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = "key_pc_jenkins"

  tags = {
    Environnement = "dev"
    Name          = "${var.name}-server"
  }
}
