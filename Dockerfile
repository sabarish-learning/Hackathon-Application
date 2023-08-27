FROM node:latest

MAINTAINER sabarishd

COPY  package*.json .

RUN npm install --silent --progress=false

COPY shoestop/* .

EXPOSE 5000 

CMD ["node", "server.js"]
