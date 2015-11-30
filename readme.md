# Nginx fcgiwrap Docker

> [Nginx](http://nginx.org/) HTTP server with fcgiwrap Docker image

## Supported tags and respective Dockerfile links :

- `1.9.7`, `latest` [(1.9/Dockerfile)](https://github.com/rodolpheche/nginx-fcgiwrap-docker/blob/1.9.7/Dockerfile)

## How to use this image

##### Launch a Hello World Nginx fcgiwrap container

```sh
wget https://raw.githubusercontent.com/rodolpheche/nginx-fcgiwrap-docker/master/sample/cgi-bin/hello.sh
docker run -d -v $PWD:/usr/share/nginx/html/cgi-bin -p 80:80 rodolpheche/nginx-fcgiwrap
```

> Simply access [http://localhost/cgi-bin/hello.sh](http://localhost/cgi-bin/hello.sh) to show the hello world message.

##### Launch a Hello World with static Nginx fcgiwrap container

```sh
git clone https://github.com/rodolpheche/nginx-fcgiwrap-docker.git
docker run -d -v $PWD/nginx-fcgiwrap-docker/sample:/usr/share/nginx/html -p 80:80 rodolpheche/nginx-fcgiwrap
```

> Access [http://localhost/](http://localhost/) to show the static site.
