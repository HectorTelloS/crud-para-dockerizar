FROM node:19.8-alpine

WORKDIR /app

COPY  package.json ./

RUN npm install

COPY . .

RUN rm -rf node_modules

RUN npm install --prod
EXPOSE 3000

CMD [ "node","app.js" ]