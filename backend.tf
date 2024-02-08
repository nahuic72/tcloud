terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.20.0"
    }
  }


  backend "remote" {
    organization = "josecitonube"

    workspaces {
      name = "tcloud"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
  region     = var.region
}
