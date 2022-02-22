docker rm -f apigateway-service
docker run -d -p 8000:8000 --network ecommerce-network \
  -e "spring.cloud.config.uri=http://config-service:8888" \
  -e "spring.rabbitmq.host=rabbitmq" \
  -e "eureka.client.service-url.defaultZone=http://discovery-service:8761/eureka" \
  --name apigateway-service paki1019/apigateway-service:1.0
