#/bin/bash

# Entorno para ECS
ecs-cli configure profile --profile-name ${ECS_ENVIRONMENT}-${ECS}
ecs-cli configure --cluster ${ECS_ENVIRONMENT}-${ECS} --default-launch-type FARGATE --config-name ${ECS_ENVIRONMENT}-${ECS} --region ${AWS_REGION}

# Detención de servicios para microservicios en ECS
###################

# Configura Scale = 0
ecs-cli compose --project-name ${ECS_ENVIRONMENT}-${ECS}-${MICROSERVICE-NAME} \
    --cluster-config ${ECS_ENVIRONMENT}-${ECS} \
    --ecs-profile ${ECS_ENVIRONMENT}-${ECS} \
    --file ${MICROSERVICE-NAME}/docker-compose.yml \
    --ecs-params ${MICROSERVICE-NAME}/ecs-params.yml \
      service scale 0
