FROM node:22-alpine
WORKDIR /app
COPY src/package*.json .
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "src/server.js"]