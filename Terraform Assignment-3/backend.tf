terraform {
  backend "s3" {
    bucket         = "backend-file.xyz"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
  dynamodb_table = ""
  }
}
