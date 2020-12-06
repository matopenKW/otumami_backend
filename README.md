# otsumami_backend

### ECS構築
```
$ aws ecs register-task-definition --cli-input-json file://task-definition.json

$ aws ecs create-service --cli-input-json file://ecs-service.json


```