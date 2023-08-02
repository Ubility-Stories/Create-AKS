resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = var.kubernetes_cluster_name
  location            = var.kubernetes_cluster_location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = var.kubernetes_cluster_dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node-count
    vm_size    = var.vm-size
  }

  identity {
    type = "SystemAssigned"
  }
}
