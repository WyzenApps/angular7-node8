ARG NODE_VERSION=8
FROM node:$NODE_VERSION

ARG NG_CLI_VERSION=7
ARG GULP_CLI_VERSION=2

RUN yarn global add gulp-cli@$GULP_VERSION

RUN npm i -g @angular/cli@$NG_CLI_VERSION

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

WORKDIR /app

entrypoint ["/entrypoint.sh"]

