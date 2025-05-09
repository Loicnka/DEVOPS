terraform {
  backend "s3" {
    bucket = "loic-terraform-statefile"
    key = "${var.name}/statefile"
    region = "eu-north-1"
  }
}  

