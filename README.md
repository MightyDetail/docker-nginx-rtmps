# docker-nginx-rtmps
Docker NGINX RTMP(S) Proxy for restreaming to multiple Hosts (Twitch, Youtube, Facebook....)

## Supported tags and respective `Dockerfile` links

* [`latest` _(Dockerfile)_](https://github.com/mightydetail/docker-nginx-rtmps/blob/master/Dockerfile)
* [`ffmpeg` _(Dockerfile)_](https://github.com/mightydetail/docker-nginx-rtmps/blob/ffmpeg/Dockerfile)

## How to use

* For the simplest case, just run a container with this image:

```bash
docker run -d -p 1935:1935 --name nginx-rtmps mightydetail/nginx-rtmps:latest
```

## Extending NGINX Config for Multistreaming

```Nginx
worker_processes auto;
rtmp_auto_push on;
events {}
rtmp {
    server {
        listen 1935;
        listen [::]:1935 ipv6only=on;

        application live {
            live on;
            record off;
        }
    }
}
```
