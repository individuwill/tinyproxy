FROM alpine:3.9

RUN apk add --update --no-cache tinyproxy && rm -rf /var/cache/apk/* && echo "Allow 0.0.0.0/0" >> /etc/tinyproxy/tinyproxy.conf

EXPOSE 8888

CMD ["tinyproxy", "-d"]
