module "resource_block" {
  source   = "../../child/resource_group"
  resource = var.resource
}

module "storage" {
  source          = "../../child/storage_account"
  storage_account = var.storage_account
}

module "stg_container" {
  source            = "../../child/container"
  storage_container = var.storage_container
}

module "acr" {
  source                     = "../../child/acr"
  azurerm_container_registry = var.azurerm_container_registry
}

module "network" {
  source = "../../child/vnet"
  vnsg   = var.vnsg
  vnet   = var.vnet
}

module "subnet" {
  source = "../../child/subnet"
  subnet = var.subnet
}

module "pip" {
  source = "../../child/azurerm_pip"
  pip = var.pip
}

module "nic" {
  source = "../../child/azurerm_nic"
  nic = var.nic
}