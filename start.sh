#!/bin/bash

# Start sshd
/usr/sbin/sshd -D -e &

start_jenkins_master () {
    # Starting Jenkins for master
    echo "[ JENKINS ] : Starting Jenkins master ..."
    java -Dhudson.DNSMultiCast.disabled=true -Dhudson.udp=-1 -jar /usr/src/app/jenkins.war &
}

start_jenkins_slave () {
    # Starting Jenkins for slave/agent
    echo "[ JENKINS ] : Starting Jenkins slave/agent: '{$SLAVENAME}' ..."
    java -jar /usr/src/app/agent.jar -jnlpUrl http://$MASTER_IP:$MASTER_PORT/computer/$SLAVE_NAME/slave-agent.jnlp -secret $MASTER_SECRET -workDir $SLAVE_WORK_DIR -noReconnect &
}

# Starting all local processes
if [ -z ${RUN_MASTER+x} ]; then
    # Jenkins Slave Device
    start_jenkins_slave
else
    # Jenkins Master Device
    start_jenkins_master
fi
