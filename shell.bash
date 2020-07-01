docker build -t rabbitmq-loadbalancer -f Dockerfile .
docker stop rabbitmq-loadbalancer
docker rm rabbitmq-loadbalancer
docker run -d -p 6378:5000 -v ${PWD}/haproxy.cfg:/etc/haproxy/haproxy.cfg --name rabbitmq-loadbalancer rabbitmq-loadbalancer
