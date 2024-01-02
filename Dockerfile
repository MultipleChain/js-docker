FROM node:lts

WORKDIR /usr/src/app
COPY package*.json ./
COPY server.js ./

# Port
EXPOSE 4030

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

# http
ENTRYPOINT ["entrypoint.sh"]