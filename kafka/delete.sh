kubectl delete -f 17.kafka-jmx-exporter-patch.yml
kubectl delete -f 16.metrics-config.yml
kubectl delete -f 15.kafka-manager.yml
kubectl delete -f 14.kafka-manager-service.yml
kubectl delete -f 13.kafka.yml
kubectl delete -f 12.bootstrap-service.yml
kubectl delete -f 11.dns.yml
kubectl delete -f 10.broker-config.yml
kubectl delete -f 09.outside-service.yml
#kubectl delete -f 08.zoo.yml
kubectl delete -f 07.pzoo.yml
kubectl delete -f 06.service.yml
#kubectl delete -f 05.zoo-service.yml
kubectl delete -f 04.pzoo-service.yml
kubectl delete -f 03.zookeeper-config.yml
kubectl delete -f 02.pod-labler.yml
kubectl delete -f 01.node-reader.yml
kubectl delete -f kafka_pvc.yml
kubectl delete -f zookeeper_pvc.yml
kubectl delete -f kafka_pv.yml
kubectl delete -f zookeeper_pv.yml
kubectl delete -f 00.storageClass.yml
kubectl delete namespace kafka