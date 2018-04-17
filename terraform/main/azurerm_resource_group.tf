# Azureプロバイダーを使用
provider "azurerm" {
}
resource "azurerm_resource_group" "mercury" {
        name = "mercury-prd"
        location = "eastus"
}

