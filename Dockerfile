FROM node:alpine

#Install dependencies before copying app to save on build time
WORKDIR /home/node/app
COPY ./package*.json ./
RUN npm install

COPY . .

USER node
CMD ["npm", "start"]
EXPOSE 8080
