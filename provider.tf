provider "aws" {
  region     = "us-east-1"
  access_key = "AAAxzxzxzxzxxxxxxAAA"
  secret_key = "SSCCxxxxxxxxxxxxAAAA"
}
provider "datadog" {
  api_key = "data-dog-api-key"
  app_key = "data-dog-app-key"
}
terraform {
  required_version = ">= 0.13"

  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = ">= 2.10, < 4"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}