docker rm -f discovery-service
docker run -d -p 8761:8761 --network ecommerce-network \
    -e "spring.cloud.config.uri=http://config-service:8888" \
    --name discovery-service paki1019/discovery-service:1.0
