#There are 3 steps to build a docker image :

#1 - use an existing docker image as a base for your docker image
FROM alpine

#2 - download and install the dependencies for your image
WORKDIR /usr/app
#copy your project into the context of the container
COPY /resources/package.json ./

RUN apk add --update redis
RUN apk add --update gcc

#3 - Tell you image what to do when it starts as a container
CMD ["redis-server"]