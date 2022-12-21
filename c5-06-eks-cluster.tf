resource "aws_eks_cluster" "eks_cluster" {
    name = "eks-master-node-${var.cluster_name}"
    role_arn = aws_iam_role.eks_master_role.arn
    #version = var.cluster_version #if you dont provide version it will automatically go with latest

    vpc_config {
        subnet_ids = module.vpc.public_subnets
        endpoint_private_access = var.cluster_endpoint_private_access
        endpoint_public_access = var.cluster_endpoint_public_access
        public_access_cidrs = var.cluster_endpoint_public_access_cidrs
    }

    kubernetes_network_config {
        service_ipv4_cidr = var.cluster_service_ipv4_cidr
    }
    #enabling eks control plane loggging
    enabled_cluster_log_types = [ "api", "audit", "authenticator", "controllerManager", "scheduler" ]
    #Ensure IAM role permission are created before and deleted after eks cluster.connection
    depends_on = [
        aws_iam_role_policy_attachment.eks-AmazonEKSClusterPolicy,
        aws_iam_role_policy_attachment.eks-AmazonEKSVPCResourceController,
    ]

}