#/bin/bash

# ecs_user credentials: con permisos para deployar
#export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXX
#export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXX

#export MICROSERVICE-NAME=Servicio 01 | Servicio 02 | Servicio 03 

export ECS_EXECUTION_ROLE=ecsTaskExecutionRole

#export ECS_ENVIRONMENT=prod | capa | test
export ECS_ENVIRONMENT=test

# Aplicacion
export ECS=ecs
export AWS_REGION=xx-xxxx-x

# Repositorio de imagenes ECR
export REPOSITORY_URL=XXX.dkr.ecr.${AWS_REGION}.amazonaws.com

# VPC
export AWS_VPC=vpc-xxxxxxxxxxxxxx
export AWS_PRIVATE_SUBNET1=subnet-xxxxxxxxxxxxxxxxx

# EFS
export EFS_ID=fs-xxxxxxxxxxxxxxxx
export AWS_SERVICE_WORK_FSAP=fsap-xxxxxxxxxxxxxxxxx

# Service Discovery
export AWS_NAME_SPACE=ecs.local

#######################
# Parámetros por tareas
#
# CPU value	        Memory value (MiB)
# 256 (.25 vCPU)	512 (0.5GB), 1024 (1GB), 2048 (2GB)
# 512 (.5 vCPU)	    1024 (1GB), 2048 (2GB), 3072 (3GB), 4096 (4GB)
# 1024 (1 vCPU)	    2048 (2GB), 3072 (3GB), 4096 (4GB), 5120 (5GB), 6144 (6GB), 7168 (7GB), 8192 (8GB)
# 2048 (2 vCPU)	    Between 4096 (4GB) and 16384 (16GB) in increments of 1024 (1GB)
# 4096 (4 vCPU)	    Between 8192 (8GB) and 30720 (30GB) in increments of 1024 (1GB)
#
# Valores por defecto:
#
# CPU = 256
# MEM = 512
# SCALE = 1
# MAX_PERCENT = 200
# MIN_PERCENT = 100

##########
# Servicio 01
##########
# Image version guardada en el ECR
export ECR_SERVICE_01_VERSION=X.X.X
# Tasks CPU - Mem - Scaling
export ECS_SERVICE_01_CPU=512
export ECS_SERVICE_01_MEM=1024
export ECS_SERVICE_01_SCALE=1
export ECS_SERVICE_01_MAX_PERCENT=200
export ECS_SERVICE_01_MIN_PERCENT=100
# Load Balancers Target Groups ARN
export AWS_SERVICE_01_TG=arn:aws:elasticloadbalancing:xx-xxxx-x:xxxxxxxxxxx:targetgroup/xxx/xxxxxxxxxxxx
export AWS_SERVICE_01_TG_PORT=80
# Grupos de Seguridad
export AWS_SERVICE_01_SG=sg-xxxxxxxxxxxxxxx
# Log Groups
export AWS_SERVICE_01_LOG=/ecs/xxxxx

##########
# Servicio 02
##########
# Image version guardada en el ECR
export ECR_SERVICE_02_VERSION=X.X.X
# Tasks CPU - Mem - Scaling
export ECS_SERVICE_02_CPU=512
export ECS_SERVICE_02_MEM=1024
export ECS_SERVICE_02_SCALE=1
export ECS_SERVICE_02_MAX_PERCENT=200
export ECS_SERVICE_02_MIN_PERCENT=100
# Load Balancers Target Groups ARN
export AWS_SERVICE_02_TG=arn:aws:elasticloadbalancing:xx-xxxx-x:xxxxxxxxxxx:targetgroup/xxx/xxxxxxxxxxxx
export AWS_SERVICE_02_TG_PORT=80
# Grupos de Seguridad
export AWS_SERVICE_02_SG=sg-xxxxxxxxxxxxxxx
# Log Groups
export AWS_SERVICE_02_LOG=/ecs/xxxxx

##########
# Servicio 03 OpenSearch AWS service index
##########
# Image version
export ECR_SERVICE_INDEX_VERSION=X.X.X.X
# Tasks CPU - Mem - Scaling
export ECS_SERVICE_INDEX_CPU=512
export ECS_SERVICE_INDEX_MEM=1024
export ECS_SERVICE_INDEX_SCALE=1
export ECS_SERVICE_INDEX_MAX_PERCENT=200
export ECS_SERVICE_INDEX_MIN_PERCENT=100
# Grupos de Seguridad
export AWS_SERVICE_INDEX_SG=sg-xxxxxxxxxxxxxxxx
# Log Groups
export AWS_SERVICE_INDEX_LOG=/ecs/SERVICE/lgs-xxxxxxxxx
# EFS Access Point
export AWS_SERVICE_INDEX_FSAP=fsap-xxxxxxxxxxxxxx
# Env
export AWS_SERVICE_INDEX_JDBC_CONNECTION_STRING=jdbc:postgresql://DireccionRDS.zone.rds.amazonaws.com:puerto/database?currentSchema=schema
export AWS_SERVICE_INDEX_JDBC_DATABASE=SERVICE
export AWS_SERVICE_INDEX_JDBC_USER=user
export AWS_SERVICE_INDEX_JDBC_PASSWORD=password
export AWS_SERVICE_INDEX_ELS_HOST=https://opensearch-xxxxxxxxxxxxxxxx.zone.es.amazonaws.com:443
export AWS_SERVICE_INDEX_ELS_USER=OpenSearch-user
export AWS_SERVICE_INDEX_ELS_PASSWORD=OpenSearch-passwd
export AWS_SERVICE_INDEX_ELS_INDEX=indice