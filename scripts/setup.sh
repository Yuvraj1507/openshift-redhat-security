## scripts/setup.sh
```sh
#!/bin/bash
echo "Setting up project..."
kubectl apply -f deployment/
kubectl apply -f security/
```