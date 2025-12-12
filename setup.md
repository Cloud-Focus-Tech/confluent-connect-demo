The following instructions guide through a minimal setup of Confluent on Kubernetes.

# Create the Namespace (special labels for my cluster)
```
kubectl create namespace confluent
kubectl label ns confluent pod-security.kubernetes.io/enforce=privileged  
kubectl label ns confluent pod-security.kubernetes.io/audit=privileged 
kubectl label ns confluent pod-security.kubernetes.io/warn=privileged
```


# Install the Operator
```
helm repo add confluentinc https://packages.confluent.io/helm
helm repo update

helm upgrade --install confluent-operator confluentinc/confluent-for-kubernetes  --namespace confluent

```

# Make sure the Operator pod is running: 
```bash
kubectl get pods -n confluent
kubectl get crds | grep confluent

```


# Deploy a Connect Host
```bash
kubectl deploy -f deploy.yaml
```

