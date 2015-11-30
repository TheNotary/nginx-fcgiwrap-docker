FROM nginx:1.9.7

RUN apt-get update && apt-get install -y fcgiwrap curl && apt-get clean

COPY resources/conf /etc/nginx

CMD spawn-fcgi -s /var/run/fcgiwrap.socket /usr/sbin/fcgiwrap && nginx -g "daemon off;"
