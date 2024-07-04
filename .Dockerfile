FROM node 

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4000

VOLUME [ "/app/feedback" ]

CMD ["node", "server.js"]