FROM node:onbuild

RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY src/* /app/
EXPOSE 8080

CMD [ "node", "index.js" ]