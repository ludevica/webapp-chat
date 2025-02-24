FROM node:19-bullseye-slim

# FROM --platform=linux/amd64 node:19-bullseye-slim

WORKDIR /app

# 添加环境变量声明 配合 “-e"参数使用
# ENV NEXT_PUBLIC_APP_ID=''
# ENV NEXT_PUBLIC_APP_KEY=''
# ENV NEXT_PUBLIC_API_URL=''

COPY . .

RUN yarn install
RUN yarn build

EXPOSE 3000

CMD ["yarn","start"]


#!/bin/bash
# docker run -d -p 3000:3000 \
#   --env-file .env \
#   --rm --name chatweb dify-webapp-chat:latest

# .env
# NEXT_PUBLIC_APP_ID=your_app_id
# NEXT_PUBLIC_APP_KEY=your_app_key  
# NEXT_PUBLIC_API_URL=your_api_url

# docker run -d -p 3000:3000 \
#   -e NEXT_PUBLIC_APP_ID=your_app_id \
#   -e NEXT_PUBLIC_APP_KEY=your_app_key \
#   -e NEXT_PUBLIC_API_URL=your_api_url \
#   --rm --name chatweb dify-webapp-chat:latest