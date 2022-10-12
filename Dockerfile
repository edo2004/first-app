# Name the node stage "builder"
FROM node:16-alpine3.12
# Set working directory
WORKDIR /app
# Copy all files from current directory to working dir in image
COPY package.json .
#COPY yarn.lock .
# install node modules and build assets
RUN yarn install --production

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]