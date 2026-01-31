FROM node:18

WORKDIR /usr/src/app

ADD . .

COPY package*.json ./

COPY ./src ./src

RUN npm ci

RUN npm run build

CMD ["node", "dist/main.js"]
