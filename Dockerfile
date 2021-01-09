FROM node:13

ENV NODE_ENV production
ENV PORT 8080
WORKDIR /usr/src/app

COPY package.json .

RUN npm link bwip-js
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]