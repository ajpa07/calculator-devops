
# Stage 1
# pull official base image
#FROM node:15-alpine AS build-step

#RUN npm install -g npm@7.6.3

#RUN mkdir /app


# Set working directory
#WORKDIR /app

#COPY package.json /app

#RUN npm install 

#COPY . /app


#RUN npm run build

# Stage 2
#FROM nginx:alpine

#COPY --from=build-step /app/build /usr/share/nginx/html

# pull official base image
FROM node:15-alpine

RUN npm install -g npm@7.6.3
# set working directory
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# add app
COPY . ./

# start app
CMD ["npm", "start"]

