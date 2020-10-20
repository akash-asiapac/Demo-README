variable "resource_group"{
  default = "NKFSINSDRGSHR"
}
variable "location"{
  default = "southeastasia"
}
variable "vnet"{
  default = "Hub"
}
variable "vnet-2"{
  default = "Spoke"
}
variable "address_space"{
  default = "10.0.0.0/16"
}
variable "address_spacevnet-2"{
  default = "20.0.0.0/16"
}
variable "subnet_name"{
  default = ["subnet-1", "subnet-2", "subnet-3", "subnet-4", "subnet-5"]
}
variable  "address_prefix" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]
}
variable "vnet2subnet_name"{
  default = ["subnet-1", "subnet-2", "subnet-3", "subnet-4", "subnet-5"]
}
variable  "address_prefixvnet2" {
  default = ["20.0.1.0/24", "20.0.2.0/24", "20.0.3.0/24", "20.0.4.0/24", "20.0.5.0/24"]
}
variable "nsg"{
  default = "demo_nsg"
}
variable "udr"{
  default = "route-1"
}