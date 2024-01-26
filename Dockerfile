FROM node:18

EXPOSE 3000

WORKDIR /app

VOLUME [ "/app/uploads" ]

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

CMD ["yarn", "start:dev"]