FROM node:10-alpine

WORKDIR /usr/app

COPY package.json package-lock.json ./
RUN npm install --quiet

COPY . .
ENV PORT 8080
CMD ["node", "server.js"]
