FROM node:23.4.0

WORKDIR /app

COPY . .

RUN npm install

CMD ["node", "server.js"]