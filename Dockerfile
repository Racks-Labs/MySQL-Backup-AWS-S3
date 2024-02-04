FROM alpine:3.18 AS build

WORKDIR /root

RUN apk add --update --no-cache nodejs npm

COPY package*.json ./
COPY tsconfig.json ./
COPY src ./src

RUN npm ci
RUN npm run build

FROM alpine:3.18

WORKDIR /root

COPY --from=build /root/node_modules ./node_modules
COPY --from=build /root/dist ./dist

RUN apk add --update --no-cache mysql-client nodejs npm mariadb-connector-c


ENTRYPOINT ["node", "dist/index.js"]
