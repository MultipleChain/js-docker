FROM node:lts

WORKDIR /usr/src/app
COPY package*.json ./
COPY server.js ./

# Port
EXPOSE 4030

RUN npm install

CMD ["node", "server.js"]