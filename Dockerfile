FROM node:10

COPY package*.json ./

RUN npm install

COPY . .

CMD node app.js

EXPOSE 3000

HEALTHCHECK CMD curl --fail http://localhost:3000/ || exit 1