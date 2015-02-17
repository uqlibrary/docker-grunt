FROM ruby:2.1

RUN gem install compass

ENV NODE_VERSION 0.10.33

RUN curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" \
    && tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
    && npm install -g npm@"$NPM_VERSION" \
    && npm cache clear

RUN npm install -g grunt-cli
RUN npm install -g bower

RUN mkdir -p /var/app/current

WORKDIR /var/app/current/frontend

CMD [ "grunt" ]

EXPOSE 8001
