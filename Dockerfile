FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
# RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 8080
RUN chown -R node /usr/src/app
USER node
RUN npm run test
# FROM node:6-onbuild
# # create app directory
# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
# #install dependencies
# COPY package.json /usr/src/app
# RUN npm install
# # bundle source
# COPY . /usr/src/app
# EXPOSE 3000
# CMD ["npm", "test"]