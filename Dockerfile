FROM nginx:1.9.7

RUN apt-get update && apt-get install -y fcgiwrap curl && apt-get clean

RUN apt-get update && apt-get install -y ruby

RUN gem install bundler

COPY resources/conf /etc/nginx

# These get a working demo available
# ADD sample/bash/index.html /usr/share/nginx/html/index.html
# ADD sample/bash/cgi-bin/hello /usr/share/nginx/html/cgi-bin/hello

# these get a worked ruby demo available on port 80
ADD sample/ruby/index.html /usr/share/nginx/html/index.html
ADD sample/ruby/cgi-bin/hello /usr/share/nginx/html/cgi-bin/hello

CMD spawn-fcgi -s /var/run/fcgiwrap.socket /usr/sbin/fcgiwrap && nginx -g "daemon off;"
