FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4000

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

CMD ["npm", "start"]