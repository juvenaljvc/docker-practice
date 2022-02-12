#docker basic commands
docker logs <containerID or Name>
docker ps [--all]
docker system prune
docker images
docker exec -it <imageID>
docker pull <Image Name>
docker create hello-world
docker start -a imageIdPasted
docker run
docker stop <containerID>
docker kill <containerID>

#docker networks
docker network ls
docker network create mongo-express

#running a mongo server docker container
docker run -d \
 -p 27017:27017 \
 -e MONGO_INITDB_ROOT_USERNAME=admin \
 -e MONGO_INITDB_ROOT_PASSWORD=pwd \
 --name mongoserver \
 --network mongo-express \
 mongo

#running a mongo-client docker container in the same machine to connect with the mongo server container
 docker run -d \
   --network mongo-express \
   --name mongodb \
    -p 8082:8081 \
    -e ME_CONFIG_MONGOSERVER=mongodb \
    -e ME_CONFIG_ROOT_USERNAME=mongoadmin \
    -e ME_CONFIG_PASSWORD=secret \
    --name mongodb \
    mongo-express
