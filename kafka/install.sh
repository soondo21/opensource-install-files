## kafka 2.4.1 install
## edited by https://github.com/Yolean/kubernetes-kafka

kubectl create namespace kafka
kubectl apply -f 00.storageClass.yml
kubectl apply -f kafka_pv.yml
kubectl apply -f zookeeper_pv.yml
kubectl apply -f kafka_pvc.yml
kubectl apply -f zookeeper_pvc.yml
kubectl apply -f 01.node-reader.yml
kubectl apply -f 02.pod-labler.yml
kubectl apply -f 03.zookeeper-config.yml
kubectl apply -f 04.pzoo-service.yml
#kubectl apply -f 05.zoo-service.yml
kubectl apply -f 06.service.yml
kubectl apply -f 07.pzoo.yml
#kubectl apply -f 08.zoo.yml
kubectl apply -f 09.outside-service.yml
kubectl apply -f 10.broker-config.yml
kubectl apply -f 11.dns.yml
kubectl apply -f 12.bootstrap-service.yml
kubectl apply -f 13.kafka.yml
kubectl apply -f 14.kafka-manager-service.yml
kubectl apply -f 15.kafka-manager.yml
kubectl apply -f 16.metrics-config.yml
kubectl --namespace kafka patch statefulset kafka --patch "$(cat 17.kafka-jmx-exporter-patch.yml)"
