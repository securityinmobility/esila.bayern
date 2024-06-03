FROM node:20 as build
WORKDIR /opt

COPY package.json package-lock.json ./
COPY scripts ./scripts
RUN npm install

COPY . .
RUN npm run build



FROM nginx
COPY --from=build /opt/build/client/ /usr/share/nginx/html
