terraform {
  backend "s3" {
    bucket = "terraform-chanllenge-database-terraform"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-chanllenge-database-terraform"
  }
}