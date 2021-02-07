![GitHub Actions](https://github.com/kwmlodozeniec/balena-jenkins/workflows/Docker%20Image%20CI/badge.svg)

This is a basic Jenkins image with Python 3.7 and OpenJRE 11 preinstalled.
The device can run either as an agent or as a Jenkins master.
Click on the button below for a one click install on your Balena dashboard.

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/kwmlodozeniec/balena-jenkins)
# 🚨 Default SSH username and password
This image has a default user name and password configured in the Dockerile. Please ensure this has been changed prior to using this image in any setting as it will be very insecure!

# ℹ️ Agent Configuraton
The following configuration variables need to be set on FLEET level:
* MASTER_IP
* MASTER_PORT
* SLAVE_WORK_DIR

The following configuration variables need to be set on DEVICE level:
* MASTER_SECRET
* SLAVE_NAME

# ℹ️ Master Configuration
The following configuration variable needs to be set on DEVICE level:
* RUN_MASTER (it can be set to any non empty value)

By default JENKINS_HOME is set to /data/jenkins directory as this is the data partition which persists between updates.
