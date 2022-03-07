FROM node:current-alpine AS build
RUN apk add --no-cache git
RUN git clone https://github.com/gurustate1/optechX.git /src
WORKDIR /src
RUN npm install -g @angular/cli@latest
RUN npm install -g npm@latest
RUN yarn add @angular-devkit/build-angular --dev
RUN npm update
RUN npm install -g @angular-devkit/build-angular
