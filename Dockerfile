ARG NODE_VERSION=lts-alpine
FROM node:${NODE_VERSION}
LABEL maintainer="Mitchell Pash <mitch@mitchpash.com>"

ARG PNPM_VERSION=10.33.0
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
# corepack was removed from the Node.js default distribution in Node 25;
# install it explicitly so this image works across all supported Node versions.
RUN npm install -g corepack && corepack enable && corepack prepare pnpm@${PNPM_VERSION} --activate