kubectl delete -f wildfly-deployment.yaml && \
kubectl delete -f wildfly-conf.yaml && \
kubectl delete -f wildfly-namespace.yaml && \
kubectl delete -f wildfly-storageclass.yaml && \
echo "@@@delete@@@"
