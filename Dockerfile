FROM node:20-alpine

WORKDIR /app
COPY package.json .

RUN yarn install

COPY src/ ./src
COPY .env .

EXPOSE 3000

CMD ["yarn" , "start"]