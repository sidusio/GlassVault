FROM node:latest AS build
RUN mkdir /app
WORKDIR /app

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
RUN npm ci

COPY . /app
RUN npm run generate

FROM nginx:stable-alpine AS prod
COPY --from=build /app/.dist /usr/share/nginx/html
