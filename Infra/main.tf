module "rg" {
  source      = "./rg"
  rg-location = var.rg-location
  rg-name     = var.rg-name

}


module "virtual_network" {
  source      = "./vnet"
  prefix      = var.prefix
  addr-space  = var.addr-space
  rg-location = var.rg-location
  rg-name     = var.rg-name
}

module "subnets" {
  source      = "./subnets"
  prefix      = var.prefix
  rg-location = var.rg-location
  rg-name     = var.rg-name
  vnet_name   = module.virtual_network.vnet_name
  depends_on  = [module.virtual_network]
}

module "nic" {
  source      = "./nic"
  prefix      = var.prefix
  rg-location = var.rg-location
  rg-name     = var.rg-name
  subnet_id   = module.subnets.subnet_id
  depends_on  = [module.subnets]

}

module "virtual_machines" {
  source      = "./vm"
  prefix      = var.prefix
  rg-location = var.rg-location
  rg-name     = var.rg-name
  nic_id      = module.nic.nic_id
}