
# Stage 1
# pull official base image
FROM node:15-alpine AS build-step

RUN npm install -g npm@7.6.3

RUN mkdir /app


# Set working directory
WORKDIR /app

COPY package.json /app

RUN npm install 

COPY . /app


RUN npm run build

# Stage 2
FROM nginx:alpine

COPY --from=build-step /app/build /usr/share/nginx/html



