# Build step
FROM node:14-buster
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci 

## Build step complete, copy to working image
FROM node:14-buster
WORKDIR /app
COPY --from=0 /app .
COPY . .
RUN npm run build 
CMD ["npm", "start"]