if [ -n "$(docker ps | grep localserver)" ]; then
    docker stop localserver
    echo "Container Stopped...Successfully"
else
    echo "No container running...Successfully"
fi

if [ -n "$(docker ps -a | grep localserver)" ]; then
    docker rm localserver
    echo "Stopped container removed...Successfully"
else
    echo "No stopped container...Successfully"
fi

if [ -n "$(docker image ls | grep ilocalserver)" ]; then
    docker rmi ilocalserver
    echo "ilocalserver image removed...Successfully"
else
    echo "No ilocalserver image...Successfully"
fi