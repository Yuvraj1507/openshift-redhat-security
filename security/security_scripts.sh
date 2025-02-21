# Script to set up security configurations
echo "Setting up security policies..."
kubectl apply -f security/rbac.yaml
kubectl apply -f security/network-policy.yaml
```
