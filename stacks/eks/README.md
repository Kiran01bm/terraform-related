# Create EKS Cluster

## Procedure
1. Set the Worker Node autoscaling group to the desired size in eks-worker-nodes.tf
2. Configure the AWS Provider
```
export AWS_DEFAULT_REGION=<<REGIONNAME> && export AWS_SECRET_ACCESS_KEY=<<INSERTKEY>> && AWS_ACCESS_KEY_ID=<<INSERTKEYID>> 
```
3. Terraform Init
```
terraform init
```
4. Terraform Plan
```
terraform plan
```
5. Terraform Apply
```
terraform apply
```
6. Configure kubectl as documented [https://github.com/Kiran01bm/kubernetes-related/tree/master/eks/createViaConsole#configure-kubectl-to-connect-to-the-cluster](here)
7. Configure the kubectl to point to the created EKS cluster ex: Default cluster name is terraform-eks-demo
```
aws eks update-kubeconfig --name terraform-eks-demo
```
8. Verify the cluster installation and kubectl config
```
kubectl get svc
``` 
9. Enable worker nodes to join the cluster - From apply outputs copy the ConfigMap and create the config map, The ARN of the Worker Instance role is prepopulated in the ConfigMap output.
```
kubectl apply -f ~/Downloads/workerscm.yml
```
10. Wait for Nodes to be joined to the cluster
```
kubectl get nodes --watch
```
11. Verify that the Nodes have joined the cluster
```
kubectl get nodes
```
