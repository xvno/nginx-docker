# check if localserver exists
if [ -n "$(docker ps -a | grep localserver)" ]; then
    echo "Cleaning old container..."
    docker stop localserver
    docker rm localserver
else
    echo "No deprecated container exists..."
fi
echo "Starting nginx container..."
docker run --name localserver -p 80:80 -p 443:443 -v $(pwd)/log:/server/log -v $(pwd)/assets:/server/assets -d ilocalserver
echo "Starting nginx container...Successfully!"