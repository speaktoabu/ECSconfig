aws ecs create-service --cli-input-json file://service-def.json --region=us-east-2 \
--network-configuration '{"awsvpcConfiguration": {"subnets" :["subnet-00dec4d6c638c50ca", "subnet-03dd9ff88ac97d51a"], "securityGroups":["$sg"],"assignPublicIp":"ENABLED"}}' \
--load-balancers '[{"targetGroupArn": "$delete","containerName":"barca-delete-green-container","containerPort":8080}]' \
--task-definition barca-delete-task-green
