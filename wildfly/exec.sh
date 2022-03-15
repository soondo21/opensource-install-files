kubectl exec -ti -n wildfly $(kubectl get pods -n wildfly | awk 'NR==2 {print $1}') /bin/bash
