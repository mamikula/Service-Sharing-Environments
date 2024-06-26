resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "eks-node-group"
  node_role_arn   = "arn:aws:iam::975050289649:role/LabRole"
  instance_types = ["m1.medium"]
  subnet_ids      = [
    aws_subnet.public_subnet_1.id,
    aws_subnet.public_subnet_2.id,
  ]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }


}
