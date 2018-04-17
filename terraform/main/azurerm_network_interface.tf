resource "azurerm_network_interface" "mercurynic" {
    name                = "mercurynic"
    location            = "eastus"
    resource_group_name = "${azurerm_resource_group.mercury.name}"

    ip_configuration {
        name                          = "mercuryNicConfiguration"
        subnet_id                     = "${azurerm_subnet.mercurysubnet.id}"
        private_ip_address_allocation = "dynamic"
        public_ip_address_id          = "${azurerm_public_ip.mercurypublicip.id}"
    }

    tags {
        environment = "Terraform mercury"
    }
}

