docker rm -f user-service
docker run -d --network ecommerce-network \
    --name user-service \
    -e "spring.cloud.config.uri=http://config-service:8888" \
    -e "spring.rabbitmq.host=rabbitmq" \
    -e "spring.zipkin.base-url=http://zipkin:9411" \
    -e "eureka.client.service-url.defaultZone=http://discovery-service:8761/eureka" \
    -e "logging.file=/api-logs/users-ws.log" \
    paki1019/user-service:1.0