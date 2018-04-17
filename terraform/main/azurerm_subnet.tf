# subnetを作成する
resource "azurerm_subnet" "mercurysubnet" {
    name                 = "mercurySubnet"
    resource_group_name  = "${azurerm_resource_group.mercury.name}"
    virtual_network_name = "${azurerm_virtual_network.mercurynetwork.name}"
    address_prefix       = "10.0.2.0/24"
}

