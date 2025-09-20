FROM node:lts-alpine3.22

WORKDIR /app

COPY *.json ./

RUN npm install 

COPY . .

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "dev"]