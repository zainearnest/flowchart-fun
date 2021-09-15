FROM node:14.17
WORKDIR /usr/src/app
COPY package.json yarn.lock ./

RUN yarn
COPY . ./

EXPOSE $PORT
ENV PORT=$PORT
ENV HOST=0.0.0.0
CMD ["yarn", "start"]
