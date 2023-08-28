provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAR25Y7HZ7RNY4W56Y"
  secret_key = "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"
}
provider "datadog" {
  api_key = "2c292455cfcb4d35a9c0402975cbade6"
  app_key = "875de6a758e3124b2cbdbda69daed7dbee25e2d4"
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