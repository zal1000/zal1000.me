FROM node:14

WORKDIR /usr/src/app

COPY . ./

RUN npm lint

RUN npm ci

EXPOSE 8080

ENV HOST=0.0.0.0
ENV PORT=8080

RUN npm run build

CMD [ "npm", "run", "start" ]