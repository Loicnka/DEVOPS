terraform {
  backend "s3" {
    bucket = "loic-terraform-statefile"
    key = "apache-server/statefile"
    region = "eu-north-1"
  }
}  

