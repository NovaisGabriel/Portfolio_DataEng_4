provider "aws" {
  region = var.aws_region
}


# Centralizar o arquivo de controle de estado do terraform
terraform {
  backend "s3" {
    bucket = "teste-estrutura"
    key    = "state/portfolio4/terraform.tfstate"
    region = "us-east-2"
  }
}
