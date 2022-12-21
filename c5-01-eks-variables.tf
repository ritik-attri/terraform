variable "cluster_name" {
    description = "Name of the EKS cluster."
    type = string
    default = "eks-testing"
}
variable "cluster_service_ipv4_cidr" {
    description = "Service ipv4 cider for eks cluster"
    type = string
    default = null
}
variable "cluster_version" {
    description = "Kubernetes version to be used"
    type = string
    default = null
}
variable "cluster_endpoint_private_access" {
    description = "Indicates if cluster private API endpoint is enabled or not"
    type = bool
    default = false
}
variable "cluster_endpoint_public_access" {
    description = "Indicates if cluster public API endpoint is enabled or not"
    type = bool
    default = true
}
variable "cluster_endpoint_public_access_cidrs" {
    description = "CIDR blocks which can access clusters public access endpoints"
    type = list(string)
    default = ["0.0.0.0/0"] #means from anywhere on internet
  
}
