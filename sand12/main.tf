resource "azurerm_resource_group" "Demo_rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}