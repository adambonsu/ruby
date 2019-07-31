FROM ruby:2.2-alpine
MAINTAINER Adam Bonsu <adam@bonsu.io>
COPY docker-entrypoint.sh /usr/local/bin/ 
# Install all build dependencies
# Add bash for debugging purposes
RUN apk update \
    && apk add --virtual build-dependencies \
        build-base \
        gcc \
        wget \
        git \
    && apk add \
        bash
# Cleanup
RUN rm -rf /var/cache/apk/*
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]
RUN ["ln", "-s", "usr/local/bin/docker-entrypoint.sh", "/"] # backwards compat
WORKDIR /home
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["sh"]
