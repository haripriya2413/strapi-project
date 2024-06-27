FROM node:18-alpine

WORKDIR /usr/src/app

# Install PM2 globally
RUN npm install -g pm2

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1337

# Run Strapi with PM2
CMD ["pm2-runtime", "start", "npm", "--", "start"]
