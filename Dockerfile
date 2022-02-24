FROM node:16.14.0-stretch

ENV PORT=8080

WORKDIR /usr/app
COPY ./ /usr/app
RUN npm install

RUN node db.js

EXPOSE 8080
CMD [ "npm", "start" ]