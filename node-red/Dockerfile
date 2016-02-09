FROM jwmarshall/nodejs
MAINTAINER Jonathon W. Marshall "jonathon.marshall@gmail.com"

RUN apk --update add git python build-base \
    && rm -f /var/cache/apk/* \
    && npm install -g node-red \
       node-red-node-mongodb \
       node-red-contrib-ui \
    && mkdir -p /srv/node-red

COPY settings.js /settings.js

VOLUME /srv/node-red

EXPOSE 1880

CMD ["/usr/bin/node-red","-s","/settings.js"]
