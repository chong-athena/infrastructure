variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "athena-eks"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 4
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "t3.medium"
}


variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-west-2"  # You can replace this with your desired region
}
