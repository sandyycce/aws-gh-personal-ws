provider "aws" {
  
}

terraform {
  backend "s3" {
    bucket = "tf-resources-gha-sandy"
    region = "ap-northeast-1"
    key = "github-actions/terraform.tfstate"
    encrypt = true
    dynamodb_table = "tf-resources-gha-lock-sandy"
    
  }
}