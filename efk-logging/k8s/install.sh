#kubectl apply -f 00.logging_ns.yaml 
#kubectl apply -f 01.logging_sc.yaml 
kubectl apply -f 02.es_pv.yaml 
kubectl apply -f 03.es_pvc.yaml 
kubectl apply -f 04.es_svc.yaml 
kubectl apply -f 05.es_ss.yaml 
kubectl apply -f 06.kibana_svc.yaml 
kubectl apply -f 07.kibana_d.yaml 
#kubectl apply -f 08.fluentd_vl_pv.yaml 
#kubectl apply -f 09.fluentd_vl_pvc.yaml 
#kubectl apply -f 10.fluentd_vldc_pv.yaml 
#kubectl apply -f 11.fluentd_vldc_pvc.yaml 
kubectl apply -f 12.fluentd_sa.yaml 
kubectl apply -f 13.fluentd_cr.yaml 
kubectl apply -f 14.fluentd_crb.yaml 
kubectl apply -f 15.fluentd_ds.yaml
