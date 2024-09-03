FROM node:18-alpine as builder
WORKDIR /app
COPY .yarnrc.yml tsconfig.base.json package.json yarn.lock .
COPY ./.yarn ./.yarn
COPY ./packages ./packages
COPY ./apps/faucet/package.json ./apps/faucet/package.json
RUN yarn 
WORKDIR /app/apps/faucet
COPY ./apps/faucet .
RUN yarn 
RUN yarn build

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/apps/faucet/build /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
