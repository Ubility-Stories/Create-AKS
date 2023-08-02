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

