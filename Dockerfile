FROM node:18-alpine

RUN apk --no-cache add curl

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000
HEALTHCHECK CMD curl --fail http://localhost:3000/function/hello || exit 1
CMD [ "node", "app.js" ]