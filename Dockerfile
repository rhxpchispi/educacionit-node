FROM node:23.4.0

WORKDIR /app

COPY . .

RUN npm install
RUN apt update && apt upgrade

CMD ["node", "server.js"]