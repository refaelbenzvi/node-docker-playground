FROM node:carbon


WORKDIR /usr/src/app

COPY ./node/package*.json ./
RUN npm install

COPY ./node/*.js ./

EXPOSE 8000
CMD [ "npm", "start" ]


