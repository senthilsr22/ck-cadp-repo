terraform {

  required_version = ">= 1.5.0"

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 5.0"
    
    
    }


  }

}
 
provider "aws" {

  region = var.aws_region

}
 
module "vpc" {

  source = "./modules/vpc"
 
  vpc_cidr         = var.vpc_cidr

  public_subnets   = var.public_subnets

  private_subnets  = var.private_subnets

  availability_zones = var.availability_zones

  project_name     = var.project_name

  environment      = var.environment

}
