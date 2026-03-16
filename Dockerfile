FROM node:24.14.0
WORKDIR /app
COPY package*.json ./
RUN yarn install --frozen-lockfile
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]