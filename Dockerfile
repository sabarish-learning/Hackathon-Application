FROM node:latest

MAINTAINER sabarishd

COPY  package*.json .

RUN npm install 

COPY . .

EXPOSE 5000 

CMD [ "node", "server.js" ]
