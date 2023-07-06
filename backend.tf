terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket = var.bucket //"dev-tform-state-file"
    key    = var.key    //"dev/terraform.tfstate"
    region = var.aws_region//"eu-west-1"
  }
}

provider "aws" {
  region = var.aws_region //"eu-west-1"
}