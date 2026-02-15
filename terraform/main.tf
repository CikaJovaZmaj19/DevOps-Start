terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_rg" {
  name     = "DevOps-Start"
  location = "polandcentral"
}

resource "azurerm_container_group" "my_app" {
  name                = "devops-server"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  ip_address_type     = "Public"
  dns_name_label      = "devops-project-2026"
  os_type             = "Linux"

  container {
    name   = "web-app"
    image  = "devops2026.azurecr.io/my-image-name:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 5000
      protocol = "TCP"
    }
  }

  image_registry_credential {
    server   = "devops2026.azurecr.io"
    username = "devops2026"
    password = "EhhDpP13Jny8bmWRWHkqSkx9G41Vq3fNijfpV50mrwH5YrgUX4lcJQQJ99CBACE1PydEqg7NAAACAZCRDvqj"
  }
}
