# Deploy Scripts for AWS ECS
Sistema de scripts para suba de imagenes a Elastic Container Registry. Sube imágen docker, y permite deployar, iniciar, detener y borrar los servicios mediante scripts.
Requiere AWS CLI.

```bash
export [AWS_ACCESS_CODES]
aws ecr get-login-password --region xx-xxxx-x | docker login --username AWS --password-stdin xxxxxx.dkr.ecr.xx-xxxx-x.amazonaws.com

docker load -i [ARCHIVO_DOCKER]
docker tag xxxxxxxx [DIRECCION_ECR]/[NOMBRE_CONTENEDOR]:[VERSION]
docker push [DIRECCION_ECR]/[NOMBRE_CONTENEDOR]:[VERSION]
```
