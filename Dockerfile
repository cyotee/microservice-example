### Set the base image to Fedora
FROM cyotee/eap64

### File Author / Maintainer
MAINTAINER "Robert Greathouse" "robert@opensourcearchitect.co"

USER jboss

ADD installs/microservice.war $JBOSS_HOME/standalone/deployments/microservice.war

### Start EAP
CMD $JBOSS_HOME/bin/standalone.sh -c standalone-full-ha.xml