terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }
  required_version = ">= 1.7.2"

  // helping terraform to know on which backend tfstate lock file will be saved. 
  backend "s3" {
    bucket = "terraform-remote-backend-tauqeer-007"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-demo-state-table"
  }
}


