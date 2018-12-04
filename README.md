This is a basic Jenkins slave image with Python 2.7.15 and OpenJRE 8 preinstalled.

The following configuration variables need to be set on FLEET level:
* MASTER_IP
* MASTER_PORT
* SLAVE_WORK_DIR

The following configuration variables need to be set on DEVICE level:
* MASTER_SECRET
* SLAVE_NAME