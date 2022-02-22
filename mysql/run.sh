docker rm -f mariadb
docker run -d -p 3306:3306 --network ecommerce-network --name mariadb paki1019/my_mariadb:1.0
