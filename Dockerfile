FROM node:14-alpine as compose
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 8080

FROM compose as build
CMD ["npm", "run", "serve"]
