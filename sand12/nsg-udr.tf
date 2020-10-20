resource "azurerm_network_security_group" "Demo_nsg" {
  name                = "${var.nsg}"
  location            = azurerm_resource_group.Demo_rg.location 
  resource_group_name = azurerm_resource_group.Demo_rg.name
}
resource "azurerm_route_table" "example" {
  name                = "${var.udr}"
  location            = azurerm_resource_group.Demo_rg.location
  resource_group_name = azurerm_resource_group.Demo_rg.name
}


