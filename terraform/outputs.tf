### **`outputs.tf`**
```hcl
output "cluster_name" {
  description = "The name of the Kubernetes cluster"
  value       = module.k8s.cluster_name
}

output "kubeconfig" {
  description = "Kubeconfig file for accessing the cluster"
  value       = module.k8s.kubeconfig
  sensitive   = true
}

output "load_balancer_ip" {
  description = "External IP of the application Load Balancer"
  value       = module.k8s.load_balancer_ip
}

output "grafana_dashboard_url" {
  description = "Grafana monitoring dashboard URL"
  value       = module.monitoring.grafana_url
}