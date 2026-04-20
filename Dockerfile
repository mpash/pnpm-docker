ARG NODE_VERSION=lts-alpine
FROM node:${NODE_VERSION}
LABEL maintainer="Mitchell Pash <mitch@mitchpash.com>"

ARG PNPM_VERSION=10.33.0
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable && corepack prepare pnpm@${PNPM_VERSION} --activate