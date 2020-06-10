#specify base impage
FROM node:alpine

WORKDIR '/app'

COPY package.json . 
# run npm install to insall node.js and its dependencies
RUN  npm install

COPY .  .

# default command
CMD ["npm", "start"] 

