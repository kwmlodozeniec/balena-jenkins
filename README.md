This is a basic Jenkins image with Python 2.7.15 and OpenJRE 8 preinstalled.
The device can run either as an agent or as a Jenkins master.

# Agent Configuraton
The following configuration variables need to be set on FLEET level:
* MASTER_IP
* MASTER_PORT
* SLAVE_WORK_DIR

The following configuration variables need to be set on DEVICE level:
* MASTER_SECRET
* SLAVE_NAME

# Master Configuration
The following configuration variable needs to be set on DEVICE level:
* RUN_MASTER (it can be set to any non empty value)

By default JENKINS_HOME is set to /data/jenkins directory as this is the data partition which persists between updates.