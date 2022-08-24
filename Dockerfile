 FROM node:12.2.0-alpine
 # create app directory
 RUN mkdir -p /usr/src/app
 WORKDIR /usr/src/app
 #install dependencies
 COPY package.json /usr/src/app
 RUN npm config set unsafe-perm true && npm install && npm install gulp-cli -g && npm install gulp
 # bundle source
 COPY . /usr/src/app
 RUN npm run test
 EXPOSE 3000
 CMD ["npm", "run", "dev"]
