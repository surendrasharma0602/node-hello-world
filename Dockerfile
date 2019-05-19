FROM node:10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV HOST="new Host"
CMD [ "bash", "c", "npm start"]