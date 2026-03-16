FROM node:25.8.1
WORKDIR /app
COPY package*.json ./
RUN apt update && apt upgrade -y
RUN yarn install --frozen-lockfile
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]