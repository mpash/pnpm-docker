FROM node:alpine
LABEL maintainer="Mitchell Pash <mitch@mitchpash.com>"

ENV NPM_CONFIG_LOGLEVEL error

RUN npm --silent install --global --depth 0 pnpm