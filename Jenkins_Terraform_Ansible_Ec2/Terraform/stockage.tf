terraform {
  backend "s3" {
    bucket = "loic-terraform-statefile"
    key = "server_name/statefile"
    region = "us-east-1"
  }
}  

