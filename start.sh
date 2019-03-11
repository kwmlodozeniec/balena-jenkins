#!/bin/bash

# Start sshd if we don't use the init system
if [ "$INITSYSTEM" != "on" ]; then
  /usr/sbin/sshd -p 22 &
fi

if [ -z ${RUN_MASTER+x} ]; then
    echo "Starting Jenkins agent"
    java -jar /usr/src/app/agent.jar -jnlpUrl http://$MASTER_IP:$MASTER_PORT/computer/$SLAVE_NAME/slave-agent.jnlp -secret $MASTER_SECRET -workDir $SLAVE_WORK_DIR
else
    echo "Starting Jenkins master"
    java -Dhudson.DNSMultiCast.disabled=true -jar /usr/src/app/jenkins.war
fi
