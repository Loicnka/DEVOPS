terraform {
  backend "s3" {
    bucket = "loic-terraform-statefile"
    key = "apache_server/statefile"
    region = "eu-north-1"
  }
}  

