# base image
FROM node:10

# set working directory
WORKDIR /app

# add '/app/node_modules/.bin' to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app denpendencies
COPY package.json /app/package.json
RUN yarn install

# start app
CMD ["yarn", "start"]
