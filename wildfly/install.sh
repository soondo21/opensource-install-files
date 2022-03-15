kubectl create -n wildfly configmap wildfly-conf --from-file standalone.xml --dry-run=client -o yaml > wildfly-conf.yaml && 
kubectl apply -f wildfly-storageclass.yaml && \
kubectl apply -f wildfly-namespace.yaml && \
kubectl apply -f wildfly-conf.yaml && \
kubectl apply -f wildfly-deployment.yaml && \
echo "@@@INSTALL@@@"
