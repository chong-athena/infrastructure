variable "namespace" {
  default = "argocd"
}

variable "argocd_version" {
  description = "Version of the ArgoCD Helm chart to install"
  type        = string
  default     = "5.3.0"
}