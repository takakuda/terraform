resource "azurerm_virtual_machine" "mercuryvm" {
    name                  = "mercuryVM"
    location              = "eastus"
    resource_group_name   = "${azurerm_resource_group.mercury.name}"
    network_interface_ids = ["${azurerm_network_interface.mercurynic.id}"]
    vm_size               = "Standard_DS1_V2"

    storage_os_disk {
        name              = "mercuryOsDisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"
    }

    os_profile {
        computer_name  = "mercuryvm"
        admin_username = "**********"
        admin_password = "**********"
    }

    os_profile_linux_config {
        disable_password_authentication = false
    }

    tags {
        environment = "Terraform mercury"
    }
}

