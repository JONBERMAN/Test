# Instructions: Place your provider configuration below

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  # TODO - ADD S3 BACKEND LATER

  default_tags {
    tags = {
      Management = "Terraform"
    }
  }
}
