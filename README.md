# moneroocean-proxy
 
# to build
docker build -t moneroocean-proxy:latest .

# to run
docker run --detach --name moneroocean-proxy -v xmrig-proxy --publish 3333:3333 moneroocean-proxy:latest

# aoi
docker build -t moneroocean-proxy:latest . ; docker run --detach --name moneroocean-proxy -v xmrig-proxy --publish 3333:3333 --restart=always moneroocean-proxy:latest

# test
docker build -t moneroocean-proxy:latest . ; docker run -it --rm --name moneroocean-proxy -v xmrig-proxy --publish 3333:3333 moneroocean-proxy:latest bash
