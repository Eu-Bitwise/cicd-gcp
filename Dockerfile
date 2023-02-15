# Get node14 base image
FROM node:14
# Create app directory
WORKDIR /usr/src/app
# Copy both package.json AND package-lock.json
COPY package*.json ./
# Install app dependencies
RUN npm install
# Bundle app source
COPY . .
# Binding port
EXPOSE 8080
# Command to run our app
CMD [ "node", "server.js"]