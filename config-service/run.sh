docker rm -f config-service
docker run -d -p 8888:8888 \
    --network ecommerce-network \
    -e "spring.rabbitmq.host=rabbitmq" \
    -e "spring.profiles.active=default" \
    --name config-service \
    paki1019/config-service:1.0
