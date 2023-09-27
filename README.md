# node-docker-playground

## Steps to run the project

add the following dockerfile:

>file name: Dockerfile
```dockerfile
FROM node:carbon


WORKDIR /usr/src/app

COPY ./node/package*.json ./
RUN npm install

COPY ./node/*.js ./

EXPOSE 8000
CMD [ "npm", "start" ]
```

add the following docker-compose.yml:

>file name: docker-compose.yml
```yml
services:
  node-playground:
    container_name: node-playground
    build:
      context: .
      dockerfile: Dockerfile
    restart: unless-stopped
    ports:
      - 3001:3001
    networks:
      - main_network

networks:
    main_network:
        driver: bridge
```
