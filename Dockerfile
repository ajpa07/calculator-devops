# Stage 1
# pull official base image
FROM node:15-alpine AS build-step
RUN npm cache clear --force
RUN npm config rm proxy
RUN mkdir /app
RUN npm config rm https-proxy

# Set working directory
WORKDIR /app


COPY package.json /app

RUN npm install

COPY . /app

#RUN npm run build
RUN npm run build

# Stage 2
FROM nginx:alpine

COPY --from=build-step /app/build /usr/share/nginx/html



