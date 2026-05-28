terraform {
  backend "azurerm" {
    resource_group_name  = "rg-test1"
    storage_account_name = "strgtest11111"
    container_name       = "tfstate"
    key                  = "test1.terraform.tfstate"
  }
}

resource "azurerm_resource_group" "name2" {
  name     = "rg-test2"
  location = "centralindia"

}