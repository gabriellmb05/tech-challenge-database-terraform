data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "terraform-chanllenge-tf"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}