terraform {
  backend "s3" {
    bucket = "tf-iti"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "backend_state_lock"
  }
}