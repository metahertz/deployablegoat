
provider "aws" {
  profile = var.profile
  region  = var.region
}

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
