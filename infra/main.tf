terraform {
  backend "azurerm" {}
  required_version = ">= 1.4.6"
  required_providers {
    # For Azure projects
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.45"
    }
  }
}