FROM node:current-alpine3.10
USER node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY ./azure-cosmos-crud-api/dist/* .
COPY ./azure-cosmos-crud-api/package.json .
RUN npm install
CMD ["node", "main.js"]
