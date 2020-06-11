#specify base impage
FROM node:alpine as builder

WORKDIR '/app'

COPY package.json . 
# run npm install to insall node.js and its dependencies
RUN  npm install

COPY .  .
RUN npm run build
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx


