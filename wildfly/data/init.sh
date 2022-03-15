cp -rf /usr/local/data/webapps/* /opt/jboss/wildfly/standalone/deployments
cp -rf /usr/local/data/datasource/* /opt/jboss/wildfly/modules
cp -rf /opt/jboss/wildfly/standalone/init/data/standalone.xml /opt/jboss/wildfly/standalone/configuration/standalone.xml
sh /opt/jboss/wildfly/bin/add-user.sh admin admin
sh /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0 -Djboss.node.name=$NODE_NAME -Djboss.pod.name=$POD_NAME
