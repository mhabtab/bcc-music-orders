terraform {
  backend "azurerm" {}
  required_version = ">= 1.4.6"
  required_providers {
    # For Azure projects
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.45"
    }
  }
}

data "azurerm_resource_group" "main" {
  name = local.props.azure.resource_group
}

locals {
  props = merge(jsondecode(var.props), jsondecode(var.deployment_props))
}
