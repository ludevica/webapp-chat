FROM node:19-bullseye-slim

# FROM --platform=linux/amd64 node:19-bullseye-slim

WORKDIR /app

# 添加环境变量声明
ENV NEXT_PUBLIC_APP_ID=''
ENV NEXT_PUBLIC_APP_KEY=''
ENV NEXT_PUBLIC_API_URL=''

COPY . .

RUN yarn install
RUN yarn build

EXPOSE 3000

CMD ["yarn","start"]


#!/bin/bash
# docker run -d -p 3000:3000 \
#   --env-file .env \
#   --rm --name chatweb dify-webapp-chat:latest