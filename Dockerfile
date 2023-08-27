FROM node:latest

MAINTAINER maintainer="sabarishdevaraju@gmail.com" 

RUN echo "Tryin to build my first application"

COPY . /var/www

WORKDIR /var/www

RUN npm install npm install express npm init -y

EXPOSE 5000

ENTRYPOINT ["npm","start"]
