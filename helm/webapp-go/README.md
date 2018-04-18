# Helm Chart for webapp-go

```bash
eval $(minikube docker-env)

docker build -t webapp-go .

# kns temp

# helm lint helm/webapp-go

helm package helm/webapp-go

# helm install --dry-run --debug --name webapp-go webapp-go-0.1.0.tgz

helm install --name webapp-go webapp-go-0.1.0.tgz

# kubectl exec -it webapp-go-5546fdf6fd-db8nm -- /bin/bash

# kubectl logs -p webapp-go-5546fdf6fd-db8nm

# helm del --purge webapp-go

kubectl port-forward service/webapp-go-webapp-go 8080 2345
```

[http://192.168.99.100:30080/edit/test](http://192.168.99.100:30080/edit/test)