TAG="3.7.0"

docker build -t vallen/rabbitmq-base:$TAG base
docker build -t vallen/rabbitmq-server:$TAG server
