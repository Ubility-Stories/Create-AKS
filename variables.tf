variable "CLIENT_ID" {
  type      = string
  sensitive = true
}

variable "SECRET" {
  type      = string
  sensitive = true
}

variable "SUBSCRIPTION_ID" {
  type      = string
  sensitive = true
}
variable "TENANT_ID" {
  type      = string
  sensitive = true
}

variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type    = string
  default = "East Us"
}

variable "prefix" {
  type    = string
  default = "aks"
}

variable "kubernetes_cluster_name" {
  type = string
}

variable "kubernetes_cluster_location" {
  type    = string
  default = "East Us"
}

variable "kubernetes_cluster_dns_prefix" {
  type = string
}
variable "vm-size" {
  type    = string
  default = "Standard_DS2_v2"
}
variable "node-count" {
  type    = number
  default = 2
}
