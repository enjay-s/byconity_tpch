# Configurations for the ByConity server connection, including ip (required), tcp_port (required), user (optional) and password (optional). you can check the ip & tcp_port information in cnch_config.xml
SRV_IP=k8s-node1
SRV_TCP_PORT=9010
SRV_USER=default
SRV_PASSWORD=

#Parallel used for generating data, populate data, etc. optional, default: 1
PARALLEL=2

#Args to call clickhouse client. optional, default: <empty>
CLIENT_ARGS=" --max_threads=128"

#Prefix of the database created
DB_PREFIX=

#Use engine time (-t from client). optional, default: false
ENABLE_ENGINE_TIME=true
