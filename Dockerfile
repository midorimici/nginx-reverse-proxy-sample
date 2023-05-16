FROM golang:1.20.4-alpine

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./client ./client

RUN apk add -U --no-cache \
  nginx \
  nodejs \
  npm && \
  npm i -g yarn

COPY ./api ./api

RUN go install github.com/cosmtrek/air@latest

EXPOSE 3000 ${API_PORT}

COPY ./start.sh ./start.sh

CMD [ "sh", "start.sh" ]
