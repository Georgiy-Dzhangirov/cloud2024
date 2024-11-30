# syntax=docker/dockerfile:1

FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN yarn install --production --ignore-engines
CMD ["node", "src/index.js"]
EXPOSE 3000