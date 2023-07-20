terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
      }
    }
    backend "s3" {
      bucket = "githubmax-oidc-terraformstate"
      key = "terraform.tfstate"
      region = "eu-central-1"
    }
}

provider "aws" {
  region = "${var.aws_region}"
}