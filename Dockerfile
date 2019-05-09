FROM node:8

# Create app directory
WORKDIR /usr/src/app
COPY package.json ./ 
COPY . .
RUN npm install && npm run build
# Bundle app source


EXPOSE 3001
CMD [ "node", "serve.js" ]