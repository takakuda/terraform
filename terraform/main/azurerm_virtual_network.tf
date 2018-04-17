# virtual networkを作成
resource "azurerm_virtual_network" "mercurynetwork" {
    name                = "mercuryVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "eastus"
    resource_group_name = "${azurerm_resource_group.mercury.name}"

    tags {
        environment = "Terraform mercury"
    }
}

