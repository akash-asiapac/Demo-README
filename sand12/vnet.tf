resource "azurerm_virtual_network" "vnet-1" {
  name                = "${var.vnet}"
  location            = azurerm_resource_group.Demo_rg.location
  resource_group_name = azurerm_resource_group.Demo_rg.name
  address_space       = ["${var.address_space}"]
}
resource "azurerm_virtual_network" "vnet-2" {
  name                = "${var.vnet-2}"
  location            = azurerm_resource_group.Demo_rg.location
  resource_group_name = azurerm_resource_group.Demo_rg.name
  address_space       = ["${var.address_spacevnet-2}"]
}
resource "azurerm_subnet" "subnet-1" {
  name                 = "${var.subnet_name[count.index]}"
  resource_group_name  = azurerm_resource_group.Demo_rg.name
  virtual_network_name = azurerm_virtual_network.vnet-1.name
  address_prefixes     = ["${var.address_prefix[count.index]}"] 
  count                = "${length(var.subnet_name)}" 
}
resource "azurerm_subnet" "subnet-2" {
  name                 = "${var.vnet2subnet_name[count.index]}"
  resource_group_name  = azurerm_resource_group.Demo_rg.name
  virtual_network_name = azurerm_virtual_network.vnet-2.name
  address_prefixes     = ["${var.address_prefixvnet2[count.index]}"] 
  count                = "${length(var.vnet2subnet_name)}" 
}
resource "azurerm_virtual_network_peering" "peering-1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.Demo_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet-1.name
  remote_virtual_network_id = azurerm_virtual_network.vnet-2.id
}
 
resource "azurerm_virtual_network_peering" "peering-2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.Demo_rg.name
  virtual_network_name      = azurerm_virtual_network.vnet-2.name
  remote_virtual_network_id = azurerm_virtual_network.vnet-1.id
}