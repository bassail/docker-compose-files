# Docker Compose Files

This repo contains docker compose files for : 
- A Nginx web proxy with configured Let's Encrypt
- Deluge, to download torrents
- Jenkins, to configure different jobs
- An SFTP server, to allow access to your files
- A Wiki, to write everything you need down

This repo also contains a script to stop/start every service.

## Prerequisites

Before any action, be sure to set the ports you need on every docker compose files.

On the install.sh script, be sure to replace variable values.

These services will be accessible through HTTPS thanks to Let's Encrypt (see nginx_webproxy).

To set some Nginx configuration, update the file proxy.conf under nginx_webproxy/install/

See wikiJS website for configuration of container.
Remember to set your subdomain in this file.


## Start services
Run the script install.sh to start every container (remember to set all environment variables in this file).

# Credits :
https://hub.docker.com/r/linuxserver/deluge/

https://hub.docker.com/r/jenkins/jenkins

https://github.com/jwilder/nginx-proxy

https://github.com/atmoz/sftp

https://wiki.js.org/