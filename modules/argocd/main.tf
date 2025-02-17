resource "helm_release" "argocd" {
  name       = "argocd"
  namespace  = var.namespace
  chart      = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  version    = var.argocd_version

  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }
}