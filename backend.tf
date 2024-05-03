terraform {
  backend "s3" {
    bucket = "fusisoft-terraform-backend-bucket"
    key    = "infra_resources/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-state-locking"
  }
}
