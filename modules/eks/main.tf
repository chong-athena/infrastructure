module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.33.1"  # Check the latest on Terraform Registry.
  cluster_name    = var.cluster_name
  cluster_version = "1.26"
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnets  # Use subnet_ids, not subnets

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = var.desired_capacity
      max_capacity     = var.max_capacity
      min_capacity     = var.min_capacity
      instance_types   = [var.instance_type]
    }
  }

  cluster_endpoint_public_access  = true    # enable public endpoint
  cluster_endpoint_private_access = false   # optionally disable private endpoint
  cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"] # or your IP range
}