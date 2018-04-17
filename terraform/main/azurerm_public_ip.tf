resource "azurerm_public_ip" "mercurypublicip" {
    name                         = "mercuryPublicIP"
    location                     = "eastus"
    resource_group_name          = "${azurerm_resource_group.mercury.name}"
    public_ip_address_allocation = "dynamic"

    tags {
        environment = "Terraform Demo"
    }
}

