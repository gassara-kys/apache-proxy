FROM httpd:2.4-alpine

RUN rm -rf conf/* && apk add --no-cache apr-util-ldap tzdata && \
      cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
      apk del tzdata
ADD conf/ conf/
EXPOSE 80
