# Docker container for maintenance static webpage

This is a simple container to show a sample maintenance html page.
You can find the image on Dockerhub (https://hub.docker.com/r/csana/maintenance) 


## Usage

Simply use (to listen at tcp port 8080):
```
docker run --rm -d -p 8080:80 docker.io/csana/maintenance:latest
```

If you want to put your own maintenance.html page, use -v to mount it to /usr/share/nginx/html/ like:

```
docker run --rm -d -p 8080:80 -v "$(pwd)"/ehvb_index.html:/usr/share/nginx/html/index.html docker.io/csana/maintenance:latest
```