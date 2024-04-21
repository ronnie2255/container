FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.dwntpdy.mongodb.net
ENV MONGODB_USERNAME rohan55raj
ENV MONGODB_PASSWORD FKUyxrmZZ5pa90pu

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]