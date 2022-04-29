terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }

  required_version = ">= 0.14.0"
  
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "fishterraform"

    workspaces {
      name = "tfc-guide-example"
    }
  }
}
