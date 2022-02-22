docker rm -f prometheus
docker run -d -p 9090:9090 --network ecommerce-network --name prometheus -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
