#!/bin/bash

echo "Starting cleanup process..."

# Delete deployments, services, and configs
echo "Deleting Kubernetes resources..."
kubectl delete -f deployment/ --ignore-not-found=true
kubectl delete -f security/ --ignore-not-found=true
kubectl delete -f configs/ --ignore-not-found=true

# Delete Helm releases (if used)
if helm list | grep -q "my-app"; then
  echo "Deleting Helm release..."
  helm uninstall my-app
fi

# Delete PVCs, PVs, and secrets (if applicable)
echo "Deleting Persistent Volume Claims and Secrets..."
kubectl delete pvc --all --ignore-not-found=true
kubectl delete pv --all --ignore-not-found=true
kubectl delete secret --all --ignore-not-found=true

# Delete namespaces (optional)
echo "Checking for project namespace..."
kubectl delete namespace my-project --ignore-not-found=true

echo "Cleanup completed!"
