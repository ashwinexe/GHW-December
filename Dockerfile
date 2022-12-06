FROM node:current-slim

LABEL MAINTAINER="kumarashwin2603@gmail.com"

COPY . /src

RUN cd /src; npm install

EXPOSE 8080

CMD cd /src; node ./app.js