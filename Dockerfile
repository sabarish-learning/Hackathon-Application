FROM node:latest

MAINTAINER maintainer="sabarishdevaraju@gmail.com" 

ENV HOME=/home/app

COPY  package.json package-lock.json $HOME/node_docker/

WORKDIR $HOME/node_docker

RUN npm install --silent --progress=false

COPY . $HOME/node_docker

EXPOSE 5000 

CMD ["npm", "start"]
