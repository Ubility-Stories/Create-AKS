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
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "main" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.main.id
  name                  = "${var.prefix}np2"
  node_count            = 2
  vm_size               = "Standard_DS2_v2"
}