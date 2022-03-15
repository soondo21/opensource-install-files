kubectl delete -f secret.yaml
kubectl delete -f secret2.yaml
kubectl delete -f secret3.yaml
kubectl delete -f service.yaml
kubectl delete -f service2.yaml
kubectl delete -f ServiceAccount.yaml
kubectl delete -f role.yaml
kubectl delete -f rolebinding.yaml
kubectl delete -f configmap.yaml
kubectl delete -f configmap2.yaml
kubectl delete -f statefulset.yaml
kubectl delete pvc data-rabbitmq-rabbitmq-ha-0 -n rabbitmq
kubectl delete pvc data-rabbitmq-rabbitmq-ha-1 -n rabbitmq
kubectl delete pvc data-rabbitmq-rabbitmq-ha-2 -n rabbitmq
kubectl delete -f 02.pv.yaml
kubectl delete -f 01.storageClass.yaml
