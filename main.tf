module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  vpc_id          = module.vpc.vpc_id
  subnets         = module.vpc.subnet_ids
  desired_capacity = var.desired_capacity
  max_capacity     = var.max_capacity
  min_capacity     = var.min_capacity
  instance_type    = var.instance_type
}

#module "argocd" {
#  source         = "./modules/argocd"
#  argocd_version = "5.3.0"
#}