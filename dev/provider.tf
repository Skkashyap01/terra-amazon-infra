terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "4.51.0"
      }
    }
}

provider "azurerm" {
    subscription_id = "a1d6bd04-3639-4d4b-9592-ca9a0af66814"
  features {
    
  }
}