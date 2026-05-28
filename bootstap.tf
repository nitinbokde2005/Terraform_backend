provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "name1" {
  name     = "rg-test1"
  location = "centralindia"
}

resource "azurerm_storage_account" "strg" {
  name                     = "strgtest11111"
  resource_group_name      = azurerm_resource_group.name1.name
  location                 = azurerm_resource_group.name1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "contr" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.strg.id
  container_access_type = "private"
}