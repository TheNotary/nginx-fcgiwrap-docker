FROM nginx:1.9.7

RUN apt-get update && apt-get install -y fcgiwrap curl && apt-get clean

COPY resources/conf /etc/nginx

# These get a working demo available
ADD sample/index.html /usr/share/nginx/html/index.html
ADD sample/cgi-bin/hello.sh /usr/share/nginx/html/cgi-bin/hello.sh

CMD spawn-fcgi -s /var/run/fcgiwrap.socket /usr/sbin/fcgiwrap && nginx -g "daemon off;"
