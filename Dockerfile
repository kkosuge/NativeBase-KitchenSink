FROM node:10.13

WORKDIR /app
COPY package.json /app
COPY local_modules /app/local_modules
RUN yarn global add expo-cli
RUN yarn install

COPY . /app

CMD ["expo", "start", "--tunnel", "--no-dev", "--minify"]
